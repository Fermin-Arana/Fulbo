class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  stale_when_importmap_changes

  def current_user
    @current_user ||= User.find_by(id: session[:id]) if session[:user_id]
  end
end
