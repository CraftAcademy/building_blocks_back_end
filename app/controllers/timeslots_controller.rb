class TimeslotsController < ApplicationController
  def create
    Timeslot.create_schedule(params)
    flash[:notice] = "schedule created"
    redirect_back(fallback_location: facilities_path)
  end
end
