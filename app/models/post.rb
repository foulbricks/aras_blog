class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :headline, use: :slugged
  
  mount_uploader :image, ImageUploader
  
  belongs_to :user
  belongs_to :blog
  
  validates :headline, :introduction, :blog_id, :user_id, :publication_date, :presence => true
end
