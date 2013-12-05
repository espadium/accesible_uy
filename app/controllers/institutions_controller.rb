class InstitutionsController < ApplicationController
  def by_accessibility
    @accessibility = Accessibility.friendly.find(params[:id])
    @institutions = @accessibility.institutions
    @markers = @institutions.all.map{ |institution|
      [institution.address.lat,
       institution.address.long,
       institution.name,
       institution.accessibilities.map(&:name)]
    }
    render :index
  end

  def show
    @institution = Institution.find(params[:id])
  end

  def index
    @institutions = Institution.all
    @markers = @institutions.all.map{ |institution|
      [institution.address.lat,
       institution.address.long,
       institution.name,
       institution.accessibilities.map(&:name)]
    }
  end
end
