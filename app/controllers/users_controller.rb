class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :create, :new ]

  def dashboard
  end
end
