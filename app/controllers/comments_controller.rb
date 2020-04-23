class CommentsController < ApplicationController

    def index
        @comments = Comment.all
        render json: @comments
    end

    def new
        @comment = Comment.new
    end

    def create
    # category = Category.find_or_create_by(name: params[:category_name])
    # debugger
    newUser = User.create(username: "Anonymous")   
    comment = Comment.create(
      text: params[:text],
      post_id: params[:post_id],
      user_id: newUser.id
    )
    
    if comment.valid?
      render json: comment
    else
      render json: {errors: comment.errors.full_messages }, status: 400
    end
    
  end

  def update
    comment = Comment.find(params[:id])
    comment.update(post_id: params[:post_id], text: params[:text])
    render json: comment
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    render json: { message: "post was sent to the trash" }
  end

end
