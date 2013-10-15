class ApplicationController < ActionController::Base
  include Clearance::Controller
  protect_from_forgery

  def current_user
    super || Guest.new
  end
end
