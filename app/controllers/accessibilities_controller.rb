class AccessibilitiesController < ApplicationController
  def show
    @accessibility = Accessibility.friendly.find(params[:id])
  end

  def events
    @accessibility = Accessibility.friendly.find(params[:id])
    @events = @accessibility.events
  end

  def institutions
    @accessibility = Accessibility.friendly.find(params[:id])
    @institutions = @accessibility.institutions
  end

  def places
    @accessibility = Accessibility.friendly.find(params[:id])
    @places = @accessibility.places
  end

  def set
    if session[:accessibilities].nil?
      session[:accessibilities] = []
    end

    if !session[:accessibilities].include? params[:accessibility_id].to_i
      session[:accessibilities] << params[:accessibility_id].to_i
    else
      session[:accessibilities].delete params[:accessibility_id].to_i
    end
    render json: { message: 'ok', session:  session[:accessibilities] }
  end
end
