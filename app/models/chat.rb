class Chat < ActiveRecord::Base
  belongs_to :user
  has_many :chat_messages

  def update
    Chat.update(params[:chat_params])
  end
end
