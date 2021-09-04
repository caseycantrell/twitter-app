class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.string :user_id
      t.text :body
      t.string :date_posted

      t.timestamps
    end
  end
end
