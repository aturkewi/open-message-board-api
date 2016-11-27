class MessageBoard < ActiveRecord::Base
  
  before_validation :create_slug
  
  validates :name, :slug, uniqueness: true
  
  has_many :messages
  
  
  
end
