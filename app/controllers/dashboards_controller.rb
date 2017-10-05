class DashboardsController < ApplicationController
  def index
    @buildings = Building.all
  end
end
