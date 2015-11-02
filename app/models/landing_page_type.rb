class LandingPageType < ActiveRecord::Base
  has_many :landing_pages
  
  validates :name, :presence => true
  
end