class Photo < ActiveRecord::Base
  mount_uploader :file, PhotoUploader
  
  validates :file, :presence => true
  
  def url
    file.to_s
  end
  
end