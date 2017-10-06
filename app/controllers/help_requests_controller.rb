class HelpRequestsController < ApplicationController
  def index
    @help_requests = HelpRequest.where(building_id: session[:current_building_id]).last(20)
  end

  def new
    @building = Building.find(params[:building_id])
    @help_request = HelpRequest.new
  end

  def create
    @building = Building.find(params[:building_id])
    @help_request = HelpRequest.new help_params
    @help_request.building_id = @building.id
    @help_request.user_id = current_user.id

    if @help_request.save
      flash[:notice] = "New help request sent !!"
      redirect_back(fallback_location: dashboard_path(@building.id))
    end
  end

  def destroy
    @help_request = HelpRequest.find(params[:id])
    if @help_request.destroy
      flash[:notice] = "Help Request Deleted!"
      redirect_back(fallback_location: help_requests_path)
    end
  end

  private

  def help_params
    params.require(:help_request).permit(:title, :message)
  end
end
