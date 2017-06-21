class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    if @user.destroy
        redirect_to root_url, notice: "User deleted."
    end
  end

  def show
  end

  def create
    @user = User.new(user_params)
    @user.type = "tecnico"

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Sala was successfully created.' }
        format.json { render :show, status: :created, location: @sala }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def approve_user
    @user = User.find_by_id(params[:user_receive])
    @user.approve = true
    @user.save
  end

  private
  
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
