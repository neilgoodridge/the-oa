class TasksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :create, :show]

  def create
    @task = Task.new(task_param)
    @task.user = current_user
    if @task.save
      redirect_to_task_path(@task)
    else
      render "causes/show"
  end

  # def index
  #   @tasks = Task.all
  # end

  def time
  end 

  private

  def task_param
    params.require(:task).permit( :name, :content, :time)
  end

end
