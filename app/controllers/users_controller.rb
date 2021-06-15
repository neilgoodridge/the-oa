class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:store_tasks, :dashboard]

  def dashboard
    @causes = current_user.causes
    @cause = @causes.first
    @index = 0
    @tasks = current_user.tasks.where(cause_id: @cause.id)
    @name = current_user.name
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

  private
  def user_params
    params.require(:user).permit(:name, task_ids: [])
  end
end
