class Post < ApplicationRecord
    belongs_to :user
    has_many :num_of_likes
end
