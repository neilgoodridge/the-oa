class CausesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index ]

    def index
        @causes = Cause.all
    end

    def show
        @causes = Cause.find(params[:id])
    end
end
