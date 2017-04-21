class HelpRequestsController < ApplicationController
  def index
    @help_requests = HelpRequest.last(20)
  end

  def new

  end
end
