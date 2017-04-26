class Timeslot < ApplicationRecord
  belongs_to :facility


  def self.creat_schedule(params)
    time = params[:start_time].to_i
    slot_times = params[:time_slot].to_i
    newt = 0
    slot_times.times do
      slot = params[:time_slot].to_i
      if time > 9
        timeslot = Timeslot.new(start_time: "#{time}:00:00", facility_id: params[:facility_id])
      else
        timeslot = Timeslot.new(start_time: "0#{time}:00:00", facility_id: params[:facility_id])
      end
      if time + slot === 24
        time = 0
      elsif time + slot > 24
        newt += ((time + slot) - 24)
        time = (0 + newt)
      else
        time += slot
      end
      if time > 9
        timeslot.update(end_time: "#{time}:00:00")
      else
        timeslot.update(end_time: "0#{time}:00:00")
      end
      timeslot.save
    end
  end
end
