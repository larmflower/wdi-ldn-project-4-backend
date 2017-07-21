class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :username, :email, :password, :image, :friends, :friendships

  def full_name
    "#{object.first_name} #{object.last_name}"
  end
end
