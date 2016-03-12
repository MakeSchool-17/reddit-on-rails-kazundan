class RemoveVotesFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :votes, :integer
  end
end
