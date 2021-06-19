class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:store_tasks]

  def dashboard
    @causes = current_user.causes.order(:name).distinct
    @cause = @causes.first
    @index = 0
    @tasks = current_user.tasks.where(cause_id: @cause.id)
    @name = current_user.name
    @completed_task_count = Action.joins(:task).where("tasks.cause_id = ? and actions.user_id = ? and actions.completed = ?", @cause.id, current_user.id, true).count
  end

  def store_tasks
    if current_user
      params[:store_tasks][:task_ids].reject(&:blank?).each do |id|
        Action.create(task_id: id, user_id: current_user.id, completed: true)
      end
      redirect_to dashboard_users_path
    else
      params[:store_tasks][:task_ids].reject(&:blank?).each do |id|
        unless session[:tasks].include?(id)
          session[:tasks] << id
        end
      end
      redirect_to new_user_registration_path
    end
  end

  def previous_cause
    @causes = current_user.causes.order(:name).distinct
    @index = params[:index].to_i - 1
    if @index == -1
      @cause = @causes.last
      @index = @causes.length - 1
    else
      @cause = @causes[@index]
    end
    @tasks = current_user.tasks.where(cause_id: @cause.id)
    @completed_task_count = Action.joins(:task).where("tasks.cause_id = ? and actions.user_id = ? and actions.completed = ?", @cause.id, current_user.id, true).count
    render :dashboard
  end

  def next_cause
    @causes = current_user.causes.order(:name).distinct
    @index = params[:index].to_i + 1
    if @index >= @causes.length
      @cause = @causes.first
      @index = 0
    else
      @cause = @causes[@index]
    end
    @tasks = current_user.tasks.where(cause_id: @cause.id)
    @completed_task_count = Action.joins(:task).where("tasks.cause_id = ? and actions.user_id = ? and actions.completed = ?", @cause.id, current_user.id, true).count
    render :dashboard
  end

  private
  def user_params
    params.require(:user).permit(:name, task_ids: [])
  end
end
