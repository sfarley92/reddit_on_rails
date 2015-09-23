class ChatsController < ApplicationController

  def index
    @chat = Chat.find(params[:id])
    @chat_message = Chat.new
    @chats_message = @chat.chat_message
  end

  def show
    @chat = Chat.find(params[:id])
  end

  def update
    @chat = current_user.update(chat_params)
    redirect_to :back
  end

  def new
    @chat = Chat.new
  end

  def chat_params
    params.require(:chats).permit(:chat_message, :email)
  end
end
