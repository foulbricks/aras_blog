class Briefing < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  
  validates :headline, :description, :presence => true
  validates :position, :numericality => {:only_integer => true}
end
