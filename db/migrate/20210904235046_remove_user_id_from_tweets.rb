class RemoveUserIdFromTweets < ActiveRecord::Migration[6.1]
  def change
    remove_column :tweets, :user_id
    add_column :tweets, :user_id, :integer
  end
end
