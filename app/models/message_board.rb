class MessageBoard < ActiveRecord::Base
  has_many :messages
end
