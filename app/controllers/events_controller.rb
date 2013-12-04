class EventsController < ApplicationController
  def by_accessibility
    @accessibility = Accessibility.friendly.find(params[:id])
    @events = @accessibility.events
    render :index
  end

  def index
    @events = Event.all
  end
end
