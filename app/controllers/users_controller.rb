class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :create, :new, :store_tasks ]

  def dashboard
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
