class AccessibilitiesController < ApplicationController
  def show
    @accessibility = Accessibility.friendly.find(params[:id])
  end

  def set
    accessibilities = session[:accessibilities] || []
    accessibility_id = params[:accessibility_id].to_i
    if !accessibilities.include? accessibility_id
      accessibilities << accessibility_id
    else
      accessibilities.delete accessibility_id
    end
    render json: { message: 'ok', session: accessibilities }
  end
end
