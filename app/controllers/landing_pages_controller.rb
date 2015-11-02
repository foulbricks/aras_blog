class LandingPagesController < ApplicationController
  
  def show
    @page = LandingPage.friendly.find(params[:id])
  end
end