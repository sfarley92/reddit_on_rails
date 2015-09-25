class ChatsController < ApplicationController

  def index
    @chats = Chat.order('id ASC')
    @chat = Chat.first_or_create
  end

  def create
    redirect_to :back
  end

  def show
    @chat = Chat.find(params[:id])
  end

  def update
    @chat = Chat.create(chat_params)
    redirect_to :back
  end

  def new
    @chat = Chat.new
  end

  def chat_params
    params.require(:chat).permit(:chat_message, :email)
  end
end
