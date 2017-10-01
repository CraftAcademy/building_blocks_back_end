class Api::V1::BookingsController < ApiController
  def index
    @facility = Facility.find(params[:facility_id])
  end

  def create
    @booking = Booking.new booking_params
    @booking.facility_id = params[:facility_id]
    if current_user
      @booking.building_id = current_user.building_id
      @booking.name = "#{current_user.first_name} #{current_user.last_name}"
      @booking.user_id = current_user.id
      maxtime = Facility.find(params[:facility_id]).bok_dur
      if Booking.where(['start_time BETWEEN ? AND ?', @booking.start_time + 1, @booking.end_time - 1,]) == []
        if (@booking.start_time.strftime("%H.%M").to_f - @booking.end_time.strftime("%H.%M").to_f).abs  >  maxtime.to_f
          render json: {error: "Max durration for booking is #{maxtime} hours"}
        elsif @booking.name == nil
          render json: {message: @booking.errors.full_messages}, status: 400
        elsif @booking.save
          render json: {message: 'Your booking has been saved'}
        else
          render json: {message: @booking.errors.full_messages}, status: 400
        end
      else
        render json: {error: "time is bookt"}
      end
    else
      if @booking.name == nil
        render json: {message: @booking.errors.full_messages}, status: 400
      elsif @booking.save
        render json: {message: 'Your booking has been saved'}
      else
        render json: {message: @booking.errors.full_messages}, status: 400
      end
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    if @booking.destroy
      render json: {message: 'Your booking deleted'}
    end
  end

  private
  def booking_params
    params.permit(:name, :start_time, :id, :end_time, :building_id, :user_id)
  end
end
