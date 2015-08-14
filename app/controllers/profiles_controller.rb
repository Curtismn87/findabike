class ProfilesController < ApplicationController

  def index
  end

  def show
  end

  def new
    @profile = Profile.new
    @user = current_user
  end

  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:username, :firstname, :lastname, :address, :phone, :race, :ethnicity, :sex, :DOB)
    end

end
