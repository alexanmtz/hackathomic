class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :get_hackathons_now, :get_hackathons_next
  
  def get_hackathons_now
     return Hackathon.where('start BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all
  end
  
  def get_hackathons_next
     return Hackathon.where('start > ?', DateTime.now )
  end
end
