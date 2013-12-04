class InstitutionsController < ApplicationController
  def by_accessibility
    @accessibility = Accessibility.friendly.find(params[:id])
    @institutions = @accessibility.institutions
    render :index
  end

  def index
    @institutions = Institution.all
  end
end
