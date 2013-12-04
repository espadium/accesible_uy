class PlacesController < ApplicationController
  def index
    @places = Place.page(params[:page])
    @markers = @places.map do |place|
      [place.address_lat,
       place.address_long,
       place.name,
       place.accessibilities.map(&:name)]
    end
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
