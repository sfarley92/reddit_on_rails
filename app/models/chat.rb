class Chat < ActiveRecord::Base
  belongs_to :user

  def update
    Chat.update(params[:chat_params])
  end
end
