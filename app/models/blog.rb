class Blog < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  belongs_to :user
  has_many :posts
  
  mount_uploader :image, PhotoUploader
  
  validates :name, :user_id, :presence => true
  validates :priority, :numericality => {:integer_only => true }

end
