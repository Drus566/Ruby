class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :count_requests_in_session

  def count_requests_in_session
    #initialize with 0 if it not already defined
    session[:requests] ||= 0
    session[:requests] += 1
  end
end
