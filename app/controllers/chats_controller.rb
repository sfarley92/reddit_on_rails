class ChatsController < ApplicationController

  def index
    @chat = Chat.all
  end

  def show
    @chat = Chat.find(params[:id])
  end

  def create
    @chat = current_user.create(chat_params)
    redirect_to :back
  end

  def new
    @chat = Chat.new
  end

  def chat_params
    params.require(:chat).permit(:chat_message, :email)
  end
end
