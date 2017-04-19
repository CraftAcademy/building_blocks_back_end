class Api::V1::HelpRequestsController < ApplicationController
  def create
    @help_request = HelpRequest.new help_request
    if @help_request.save
      render json: { message: "successful"}, status: 204
    end
  end

private
  def help_request
    params.permit(:title, :message, :status)
  end
end
