class WorkordersController < ApplicationController
  def new
    @workorder = Workorder.new
  end
end
