class PlacesController < ApplicationController #Built with the help of GPT 4.0 based on class lecture notes and HW goals for user stories
  
  def index
    @places = Place.all
  end
  
  def show
    @place = Place.find(params[:id])
  end
  
  def new
    @place = Place.new
  end
  
  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to places_path
    else
      render :new
    end
  end
  
  private
  def place_params
    params.require(:place).permit(:name)
  end
  
end
