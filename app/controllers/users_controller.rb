require 'twitter'

class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :create, :new, :store_tasks ]

  def dashboard
    @cause_selected = current_user.tasks
  end

  def store_causes
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

  def home
      client = Twitter::REST::Client.new do |config|
        config.consumer_key        = "WO7k0Y6HwwN9LVbjXG8adOqZ3"
        config.consumer_secret     = "yKH8Ru6pgf43s4aVBbr5ODU2zt31pWHScPYhfQqjzGw3XpKqZo"
        config.access_token        = "1401566323671453698-MImMFVw8TvsJjqoMRR8Vwavm4AdyLg"
        config.access_token_secret = "9BnVTzJNsS1LpwoljpbACVdhb1RIhRSMUoTHIpBwIbNvG"
      end
      # @tweets = tweets.search('#Blacklivesmatter')
      # @tweets = client.user_timeline('#Blacklivesmatter', count: 20)
      @tweets = ["hello","hi"]
  end
end
