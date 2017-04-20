class HelpRequest < ApplicationRecord
  validates_presence_of :title, :message
end
