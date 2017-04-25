class Facility < ApplicationRecord
  validates_presence_of :name, :description
  has_many :bookings
end
