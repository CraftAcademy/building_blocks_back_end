class Api::V1::FacilitiesController < ApiController
  def index
    @facilities = Facility.all
  end

  def show
    @facility = Facility.find(params[:id])
  end
end
