class HelpRequest < ApplicationRecord
  validates_presence_of :title, :message, :status
end
