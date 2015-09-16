class AddVotesToLink < ActiveRecord::Migration
  def change
    add_column :links, :votes_params, :integer
  end
end
