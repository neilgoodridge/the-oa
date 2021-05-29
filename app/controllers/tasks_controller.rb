class TasksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :create]

  def create
  end

  def index
  end
end
