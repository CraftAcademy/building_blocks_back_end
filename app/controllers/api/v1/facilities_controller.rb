class Api::V1::FacilitiesController < ApiController
  def index
    @facilities = Facility.all
  end
end
