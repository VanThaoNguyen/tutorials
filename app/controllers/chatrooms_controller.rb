class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find_by(slug: :north)
    @message  = Message.new
  end

  def create
    message = Message.new(message_params)
    message.user = current_user
    if message.save
    else
      redirect_to chatrooms_path
    end
  end

  private
    def message_params
      params.require(:message).permit(:content, :chatroom_id)
    end
end