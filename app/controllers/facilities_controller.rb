class FacilitiesController < ApplicationController
  def new
    @facilities = Facility.new
  end
end
