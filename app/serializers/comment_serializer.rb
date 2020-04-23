class CommentSerializer < ActiveModel::Serializer
  attributes :id, :post_id, :text, :user_id
end
