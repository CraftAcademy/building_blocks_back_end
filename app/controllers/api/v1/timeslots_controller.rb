class Api::V1::TimeslotsController < ApiController
  def index
    @facility = Facility.find(params[:facility_id])
    @bookings = Booking.where(facility_id: params[:facility_id])
    date = params[:date]
    @date =(date.to_time + 2.hours).strftime("%F")
  end
end
