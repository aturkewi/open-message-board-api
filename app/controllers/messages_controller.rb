class MessagesController < ApplicationController
  before_action :get_message_board
  def index
    if @mb
      render json: @mb.messages
    else
      render json: {
        error: 'that message board does not yet exist',
        status: 400
      }, status:400
    end
  end
  
  def create
    message = @mb.messages.create(message_params)
    if message.save
      render json: {
        results: {
          user_name: message.user_name, 
          id: message.id,
          content: message.content,
          message_board: @mb.name,
          message: "Message created!"
        },
        status: 200
      }, status: 200
    else
      render json: {
        error: message.errors.full_messages,
        status: 400
      }, status: 400
    end
  end
  
  private
  
  def get_message_board
    @mb = MessageBoard.find_by(name: params[:board_name])
  end
  
  def message_params
    params.require(:message).permit(:user_name, :content)
  end
end
