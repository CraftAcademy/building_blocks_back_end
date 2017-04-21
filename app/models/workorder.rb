class Workorder < ApplicationRecord
  validates_presence_of :title, :message, :location
end
