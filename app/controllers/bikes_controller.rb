class BikesController < ApplicationController
  def home
  end

  def index
    @user = User.find(params[:user_id])
    if @user.id == current_user.id
      #show list of bikes
    else
      redirect_to root_path
    end
  end


  def new
  end


  def create
  end

  def show
    @user = current_user
  end

  def edit
  end

  def update
  end

  def destroy
  end


end
