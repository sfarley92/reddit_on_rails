class Chat < ActiveRecord::Base
  belongs_to :user
  has_many :chat_messages

end
