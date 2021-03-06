class PostSerializer < ActiveModel::Serializer
  attributes :id, :headline, :src, :categories, :image, :description, :posts_liked, :user_id, :posts_liked_ids
  has_one :user
  has_many :comments

  def image
    object.image.url
  end
end
