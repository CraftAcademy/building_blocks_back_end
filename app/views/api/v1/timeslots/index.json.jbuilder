json.array! @facility.timeslots.each do |timeslot|
    json.start_time timeslot.start_time
    json.end_time timeslot.end_time
end
