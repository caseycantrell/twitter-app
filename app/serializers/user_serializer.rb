class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :url

  has_many :tweets

end
