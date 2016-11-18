class Message < ActiveRecord::Base
  validates :message_board_id, :content, presence: true
  
  belongs_to :message_board
end
