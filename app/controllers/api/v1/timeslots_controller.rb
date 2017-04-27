class Api::V1::TimeslotsController < ApiController
  def index
    @facility = Facility.find(params[:facility_id])
  end
end
