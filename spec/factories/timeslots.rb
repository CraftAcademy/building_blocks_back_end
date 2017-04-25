FactoryGirl.define do
  factory :timeslot do
    date "MyString"
    association :facility
  end
end
