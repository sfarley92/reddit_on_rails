class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.integer :user_id
      t.string :email
      t.text :chat_message

      t.timestamps null: false
    end
  end
end
