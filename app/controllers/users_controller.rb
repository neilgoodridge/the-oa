class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :create, :new ]

  def dashboard
    @cause_selected = current_user.tasks
  end
end
