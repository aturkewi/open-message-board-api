class MessageBoardsController < ApplicationController
  # protect_from_forgery :except => [:create]
  def index
    render json: MessageBoard.all
  end

  def create
    message_board = MessageBoard.new(message_board_params)
    if message_board.save
      redirect_to '/message_boards'
    else
      render json: {
        error: message_board.errors.full_messages,
        status: 400
      }, status: 400
    end
  end
  
  private
  
  def message_board_params
    params.require(:message_board).permit(:name)
  end
end
