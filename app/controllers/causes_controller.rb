class CausesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index, :cause_task_show]
  USER_CAUSES = [] #in caps at top to be accessible in every method

    def index
      @causes = Cause.all
      @selected_causes = []
      USER_CAUSES.clear()
    end

    def show
       @cause = Cause.find(params[:id])
    end

  def cause_task_show
      @cause = Cause.find(params[:id])
      @tasks = @cause.tasks
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
      @time = params[:time]
      render :index
    end

end
