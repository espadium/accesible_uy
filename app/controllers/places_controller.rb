class PlacesController < ApplicationController
	def index
    @markers = Place.all.map{ |place|
      [place.address.lat,
       place.address.long,
       place.name + ': ' + place.accessibilities.map(&:name).join(', ')]
    }
	end
end
