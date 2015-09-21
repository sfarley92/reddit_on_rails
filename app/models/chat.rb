class Chat < ActiveRecord::Base
  belongs_to :user

  def create
    Chat.create(params[:chat_params])
  end
end
