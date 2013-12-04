class PlacesController < ApplicationController
	def index
    @places = Place.page(params[:page])
    @markers = @places.map{ |place|
      [place.address.lat,
       place.address.long,
       place.name,
       place.accessibilities.map(&:name)]
    }
	end

	def show
	  @place = Place.find(params[:id])
	end

  def by_accessibility
    @accessibility = Accessibility.friendly.find(params[:id])
    @places = @accessibility.places.page(params[:page])
    render :index
  end
end
