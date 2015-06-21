class ImagesController < ApplicationController

  def index
    @images = Image.all
    @image_count = Image.count
  end

#intention to create a record
  def new
    @image = Image.new
  end

#creates a record and then redirects to another place
  def create
    # @image = current_user.restaurants.new(restaurant_params)
    @image = Image.create(image_params)
    # if @image.save
       redirect_to '/images'
    # else
    #   render 'new'
    # end

  end

  def image_params
    params.require(:image).permit(:title)
  end

end
