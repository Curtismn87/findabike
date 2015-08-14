class BikesController < ApplicationController
  def home
  end

  def index
    @bikes = Bike.where(:user_id => current_user.id)
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
    @bike.user_id = current_user.id
  end


  def create
    @user = current_user
    @bike = Bike.create(bike_params)
    @bike.user_id = current_user.id
    @bike.save
    redirect_to root_path
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

  def bike_params
    params.require(:bike).permit(:model, :color, :year, :type, :serial_number, :purchase_date, :purchase_price, :receipt_document, :receipt_photo_url)
  end
end
