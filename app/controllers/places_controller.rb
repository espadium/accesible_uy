class PlacesController < ApplicationController
	def index
    @places = Place.page(params[:page])
    @markers = @places.map{ |place|
      [place.address.lat,
       place.address.long,
       place.name + ': ' + place.accessibilities.map(&:name).join(', ')]
    }
	end
end
