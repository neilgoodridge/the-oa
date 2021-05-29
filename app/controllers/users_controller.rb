class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :create, :new ]

  def create
  end

  def new
  end

  def show
  end

  def dashboard
  end

  end
