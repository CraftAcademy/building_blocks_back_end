json.array! @facilities.each do |facility|
    json.id facility.id
    json.name facility.name
    json.description facility.description
    json.rules facility.rules
    json.status facility.status
end
