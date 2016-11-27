class MessageBoard < ActiveRecord::Base
  
  before_validation :create_slug
  
  validates :name, :slug, uniqueness: true
  
  has_many :messages
  
  def create_slug
    self.slug = name.downcase.gsub(" ", "_")
  end
  
end
