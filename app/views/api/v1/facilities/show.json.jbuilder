json.name @facility.name
json.description @facility.description
json.id @facility.id
json.rules @facility.rules
json.bok_dur @facility.bok_dur
json.dyntime @facility.dyntime
json.icon @facility.icon
json.maxBookings @facility.bok_day
book = Booking.where(user_id: current_user)
json.count book.count(:all)
if book.count(:all) < @facility.bok_day.to_i
  json.max 'max'
else
  json.min 'min'
end
