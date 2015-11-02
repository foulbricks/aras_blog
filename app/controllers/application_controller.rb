class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :initalize_navigation
  
  private
  def initalize_navigation
    @blogs = Blog.where("active = ?", true).order("priority ASC")
    @navigation_pages = LandingPage.joins(:landing_page_type)
                        .where("landing_pages.active = ? AND landing_page_types.name = ?", true, "Navigation").order("headline")
  end
end
