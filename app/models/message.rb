class Message < ActiveRecord::Base
  validates :message_board_id, :content, :user_name, presence: true
  
  belongs_to :message_board
end
