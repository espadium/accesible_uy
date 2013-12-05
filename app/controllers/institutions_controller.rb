class InstitutionsController < ApplicationController
  def by_accessibility
    @accessibility = Accessibility.friendly.find(params[:id])
    @institutions = @accessibility.institutions
    @markers = @institutions.all.map do |institution|
      [institution.address_lat,
       institution.address_long,
       institution.name,
       institution.accessibilities.map(&:name)]
    end
    render :index
  end

  def show
    @institution = Institution.find(params[:id])
  end

  def index
    @institutions = Institution.all
    @markers = @institutions.all.map do |institution|
      [institution.address_lat,
       institution.address_long,
       institution.name,
       institution.accessibilities.map(&:name)]
    end
  end
end
