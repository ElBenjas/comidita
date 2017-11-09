class PicturesController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :find_picture, only:[:show, :update, :destroy]

  def index
    pictures = Picture.all
    paginate json: pictures, per_page: 10
  end

  def create
    picture = Picture.new(picture_params)
    picture.save

    render json: picture
  end

  def show
    render json: @picture
  end

  def update
    @picture.update(picture_params)

    render json: @picture
  end

  def destroy
    @picture.destroy

    render json: @picture
  end


private

  def find_picture
    @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit()
  end
end
