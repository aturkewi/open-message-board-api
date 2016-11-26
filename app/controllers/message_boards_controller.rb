class MessageBoardsController < ApplicationController
  # protect_from_forgery :except => [:create]
  def index
    render json: MessageBoard.all
  end

  def create
    message_board = MessageBoard.new(message_board_params)
    if message_board.save
      render json: {
        results: {
          name: message_board.name,
          id: message_board.id,
          message:"Message board created"
        },
        status: 200
      }, status: 200
    else
      render json: {
        error: message_board.errors.full_messages,
        status: 400
      }, status: 400
    end
  end
  
  private
  
  def message_board_params
    json_params = ActionController::Parameters.new( {message_board: JSON.parse(params['message_board'])} )
    json_params.require(:message_board).permit("name")
  end
end
