class Blog < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  belongs_to :user
  
  validates :name, :user_id, :presence => true
  

end
