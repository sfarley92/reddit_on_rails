class AddCommentsToLink < ActiveRecord::Migration
  def change
    add_column :links, :comments, :text
  end
end
