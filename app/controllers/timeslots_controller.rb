class TimeslotsController < ApplicationController
  def create
    Timeslot.creat_schedule(params)
    flash[:notice] = "schedule created"
    redirect_back(fallback_location: facilities_path)
  end
end
