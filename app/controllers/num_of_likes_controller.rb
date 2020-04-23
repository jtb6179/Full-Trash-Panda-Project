class NumOfLikesController < ApplicationController

    def index
        @num_of_likes = NumOfLike.all 
        render json: @num_of_likes
    end
    
    def update
        @num_of_like = NumOfLike.find(params[:id])
        @num_of_like.update(like: params[:like], post_id: params[:post_id])
        render json: post
    end
    
    def create
        @num_of_like = NumOfLike.create(
            like: params[:like],
            post_id: params[:post_id]
        )
        render json: @num_of_like
    end

end
