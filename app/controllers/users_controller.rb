class UsersController < ApplicationController
  protect_from_forgery with: :null_session

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
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update!(user_params)

    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: user
  end
end

private

def user_params
  params.require(:user).permit(:name, :email, :password)
end
