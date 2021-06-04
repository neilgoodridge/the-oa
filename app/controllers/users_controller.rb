class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :create, :new ]

  def dashboard
  end

  def user_params
    params.require(:user).permit(:name, task_ids: [])
  end
end
