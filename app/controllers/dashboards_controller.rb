class DashboardsController < ApplicationController
  def index
    @buildings = Building.all
  end

  def show
    @buildings = Building.find(params[:id])
  end
end
