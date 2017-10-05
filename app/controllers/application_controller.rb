class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, unless: :json_request?

  protected

  def signed_in_root_path(resource)
    if resource.role == "superadmin"
      dashboards_path
    else
      root_path
    end
  end

  def json_request?
    request.format.json?
  end
end
