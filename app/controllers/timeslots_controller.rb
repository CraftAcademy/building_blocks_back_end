class TimeslotsController < ApplicationController
  def create
    binding.pry
    @time = params[:start_time]
    params[:time_slot].times do
      binding.pry
      if @time + 4 > 24
      newt = (@time + 4)- 24
        @time = 0 + newt
      end
      Timeslot.new(start_time: @time)
      @time + 4
      Timeslot.new(start_time: @time)
    end
  end
end
