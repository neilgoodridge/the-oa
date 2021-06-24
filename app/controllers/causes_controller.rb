require 'twitter'
class CausesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index, :cause_task_show, :add_selected_cause, :select_time, :next_cause, :previous_cause]
  USER_CAUSES = [] # in caps at top to be accessible in every method
  def index
    @causes = Cause.all
    @selected_causes = []
    USER_CAUSES.clear
    @time = 0
  end
  def show
    @cause = Cause.find(params[:id])
  end
  def cause_task_show
    # if params[:id] == "selected" @cause = USER_CAUSES[0]
    if params[:id].present?
      @cause = Cause.find(params[:id])
    else
      @cause = USER_CAUSES[0]
    end
    @organisations = @cause.organisations
    @time = params[:time]
    return redirect_to causes_path, alert: "Please select a cause and a time" if @cause.blank? || @time.blank?
    if params[:time] == "all"
      outstanding_taskss = []
      done_tasks  = []
      @tasks = @cause.tasks.each do |task|
        current_user.actions.each do |action|
          if task.id == action.task_id
            done_tasks << action.task
          end

        end
      end
      # @tasks = current_user.outstanding_tasks.where(cause_id: params[:id])
     raise
    else
      @tasks = @cause.tasks.where("tasks.time <= ?", @time)
    end
    @index = 0
    if session[:tasks].blank?
      session[:tasks] = []
    end
    client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV["API_KEY"]
        config.consumer_secret     = ENV["API_SECRET_KEY"]
        config.access_token        = ENV["ACCESS_TOKEN"]
        config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
      end
      # @tweets = tweets.search('#Blacklivesmatter')
      @tweets = client.user_timeline(@cause.twitter, count: 30)
  end
  def add_selected_cause
    @causes = Cause.all
    cause = Cause.find(params[:id])
    USER_CAUSES << cause
    @selected_causes = USER_CAUSES.uniq
    # unless session[:tasks].include?(@task.id)
    #   session[:tasks] << @task.id
    # end
    @selected_causes = USER_CAUSES.uniq()
    render :index
  end
  def select_time
    @causes = Cause.all
    @time = params[:time]
    render :index
  end
  def previous_cause
    @index = params[:index].to_i
    @cause = USER_CAUSES[@index]
    @organisations = @cause.organisations
    if USER_CAUSES.length > (@index * -1)
     @index -= 1
    end
    @time = params[:time]
    if params[:time] == "all"
      @tasks = @cause.tasks
    else
      @tasks = @cause.tasks.where("tasks.time <= ?", @time)
    end
    client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV["API_KEY"]
        config.consumer_secret     = ENV["API_SECRET_KEY"]
        config.access_token        = ENV["ACCESS_TOKEN"]
        config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
      end
      # @tweets = tweets.search('#Blacklivesmatter')
      @tweets = client.user_timeline(@cause.twitter, count: 30)
    render :cause_task_show
  end
  def next_cause
    @index = params[:index].to_i
    @cause = USER_CAUSES[@index]
    @organisations = @cause.organisations
    client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV["API_KEY"]
        config.consumer_secret     = ENV["API_SECRET_KEY"]
        config.access_token        = ENV["ACCESS_TOKEN"]
        config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
    end
      # @tweets = tweets.search('#Blacklivesmatter')
      @tweets = client.user_timeline(@cause.twitter, count: 30)
    @time = params[:time]
    if USER_CAUSES.length > @index + 1
      @index += 1
    end
    if params[:time] == "all"
      @tasks = @cause.tasks
    else
      @tasks = @cause.tasks.where("tasks.time <= ?", @time)
    end
    render :cause_task_show
  end
end
