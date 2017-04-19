class Facility < ApplicationRecord
  validates_presence_of :name, :description
end
