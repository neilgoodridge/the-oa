class CausesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index, :cause_task_show, :add_selected_cause, :select_time, :next_cause, :previous_cause]
  USER_CAUSES = [] #in caps at top to be accessible in every method

  def index
    @causes = Cause.all
    @selected_causes = []
    USER_CAUSES.clear()
    @time = 0
  end

  def show
    @cause = Cause.find(params[:id])
  end

  def cause_task_show
    @cause = USER_CAUSES[0]
    @time = params[:time]
    return redirect_to causes_path, alert: "Please select a cause and a time" if @cause.blank? || @time.blank?
    @tasks = @cause.tasks.where("tasks.time <= ?", @time)
    @index = 0
    if session[:tasks].blank?
      session[:tasks] = []
    end
  end

  def add_selected_cause
    @causes = Cause.all
    cause = Cause.find(params[:id])
    USER_CAUSES << cause
    @selected_causes = USER_CAUSES.uniq()
    render :index
  end

  def select_time
    @causes = Cause.all
    @time = params[:time]
    render :index
  end

  def previous_cause
    @time = params[:time]
    @index = params[:index].to_i
   if USER_CAUSES.length > (@index * -1)
     @index -= 1
   end
    @cause = USER_CAUSES[@index]
    @tasks = @cause.tasks.where("tasks.time <= ?", @time)
    render :cause_task_show
  end

  def next_cause
    @time = params[:time]
    @index = params[:index].to_i
    if USER_CAUSES.length > @index + 1
      @index += 1
    end
      @cause = USER_CAUSES[@index]
      @tasks = @cause.tasks.where("tasks.time <= ?", @time)
    render :cause_task_show
  end
end
