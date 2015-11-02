class LandingPage < ActiveRecord::Base
  extend FriendlyId
  friendly_id :headline, use: :slugged
  
  mount_uploader :image, PhotoUploader
  
  belongs_to :landing_page_type
  
  validates :headline, :description, :landing_page_type_id, :presence => true
end
