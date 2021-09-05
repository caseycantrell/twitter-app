class TweetSerializer < ActiveModel::Serializer
  attributes :id, :body, :date_posted, :user_id

  belongs_to :user
  
end
