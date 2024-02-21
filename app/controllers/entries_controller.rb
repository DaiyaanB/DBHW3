class EntriesController < ApplicationController #Made with GPT, Class notes, and requirements from HW 3
  def new
    @place = Place.find(params[:place_id])
    @entry = @place.entries.build
  end
  

  def create
    @place = Place.find(params[:place_id])
    @entry = @place.entries.build(entry_params)
    if @entry.save
      redirect_to place_path(@place)
    else
      render :new
    end
  end
  
  private
  
  def entry_params
    params.require(:entry).permit(:title, :description, :posted_on)
  end  
end
