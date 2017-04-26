class Api::V1::TimeslotsController < ApiController
  def index
    @timeslot = Timeslot.find(params[:facility_id])
  end
end
