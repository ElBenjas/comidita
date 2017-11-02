class UsersController < ApplicationController
  protect_from_forgery with: :null_session
<<<<<<< HEAD
=======
  before_action :find_user, only:[:show, :update, :destroy]
>>>>>>> pictures

  def index
    users = User.all
    users = users.shuffle

    render json: users
  end

  def create
    user = User.new(user_params)
    user.save

    render json: user
  end

  def show
    render json: @user
  end

  def update
    @user.update!(user_params)

    render json: @user
  end

  def destroy
    @user.destroy

    render json: @user
  end
end

private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
