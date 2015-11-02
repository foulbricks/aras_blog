class HomeController < ApplicationController
  
  def index
    @posts = Post.where("active = ? AND featured = ?", true, true).order("publication_date DESC")
    @briefings = Briefing.where("active = ?", true).order("position").all
  end
end