class WorkordersController < ApplicationController
  def index
    @workorder = Workorder.all
  end

  def edit
    @workorder = Workorder.find(params[:id])
  end

  def update
    @workorder = Workorder.find(params[:id])
    if workorder_params[:status]
      @workorder.update(status: workorder_params[:status])
      flash[:notice] = "Work order status updated"
      redirect_back(fallback_location: workorders_path)
    end
  end

  def new
    @workorder = Workorder.new
    if params[:format]
      @help_requests = HelpRequest.find(params[:format])
    end
  end

  def create
    @workorder = Workorder.new workorder_params
    if @workorder.save
      flash[:notice] = "New work order sent !!"
      redirect_back(fallback_location: new_workorder_path)
    end
  end

  private

  def workorder_params
    params.require(:workorder).permit(:title, :message, :location, :urgent, :status, :id )
  end
end
