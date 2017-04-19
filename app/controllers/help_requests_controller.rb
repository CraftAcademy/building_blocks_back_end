class HelpRequestsController < ApplicationController
  def index
    @help_requests = HelpRequest.all
  end
end
