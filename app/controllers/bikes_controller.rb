class BikesController < ApplicationController
  def home
  end

  def index
    @user = User.find(params[:user_id])
    if @user.id == current_user.id
      @bikes = @user.bikes.all
    else
      redirect_to root_path
    end
  end


  def new
    @bike = Bike.new
    @user = current_user
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
