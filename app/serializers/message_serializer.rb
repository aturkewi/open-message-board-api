class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :content, :message_board_id, :created_at
end
