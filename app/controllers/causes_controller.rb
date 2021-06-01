class CausesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index ]

    def index
        @causes = Cause.all
    end

    def show
        @cause = Cause.find(params[:id])
    end

    def cause_task_show
        @cause = Cause.find(params[:id])
        @tasks = @cause.tasks
    end
end
