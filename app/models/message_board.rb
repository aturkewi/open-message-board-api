class MessageBoard < ActiveRecord::Base
  
  validates :name, uniqueness: true
  
  has_many :messages
  
end
