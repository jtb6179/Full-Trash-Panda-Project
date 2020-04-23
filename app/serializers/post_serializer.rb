class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :post_text, :user_id

  has_many :num_of_likes
  belongs_to :user

end
