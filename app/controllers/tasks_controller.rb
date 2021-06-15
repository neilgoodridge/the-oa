class TasksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  # def create
  #   @task = Task.new(task_param)
  #   @task.user = current_user
  #   if @task.save
  #   else
  #     render :cause_task_show
  #   end
  # end

  # private

  # def task_param
  #   params.require(:task).permit(:name, :content, :time)
  # end
end
