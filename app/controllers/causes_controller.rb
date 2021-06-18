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
    @cause = USER_CAUSES[0]
    @time = params[:time]
    return redirect_to causes_path, alert: "Please select a cause and a time" if @cause.blank? || @time.blank?
    @tasks = @cause.tasks.where("tasks.time <= ?", @time)
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
      @tweets = client.user_timeline(@cause.twitter, count: 2)
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
    if USER_CAUSES.length > (@index * -1)
     @index -= 1
    end
    @time = params[:time]
    @tasks = @cause.tasks.where("tasks.time <= ?", @time)
    client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV["API_KEY"]
        config.consumer_secret     = ENV["API_SECRET_KEY"]
        config.access_token        = ENV["ACCESS_TOKEN"]
        config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
      end
      # @tweets = tweets.search('#Blacklivesmatter')
      @tweets = client.user_timeline(@cause.twitter, count: 2)
    render :cause_task_show
  end
  def next_cause
    @index = params[:index].to_i
    @cause = USER_CAUSES[@index]
    client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV["API_KEY"]
        config.consumer_secret     = ENV["API_SECRET_KEY"]
        config.access_token        = ENV["ACCESS_TOKEN"]
        config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
    end
      # @tweets = tweets.search('#Blacklivesmatter')
      @tweets = client.user_timeline(@cause.twitter, count: 2)
    @time = params[:time]
    if USER_CAUSES.length > @index + 1
      @index += 1
    end
      @tasks = @cause.tasks.where("tasks.time <= ?", @time)
      render :cause_task_show
  end
end
