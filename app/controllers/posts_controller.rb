class PostsController < ApplicationController

    def index
        @posts = Post.all
        render json: @posts
    end

    def new
        @post = Post.new
    end

    def create
    # category = Category.find_or_create_by(name: params[:category_name])
    # debugger
    newUser = User.create(username: "Anonymous")   
    post = Post.create(
      title: params[:title],
      post_text: params[:post_text],
      user_id: newUser.id
    )
    
    if post.valid?
      render json: post
    else
      render json: {errors: post.errors.full_messages }, status: 400
    end
    
  end

  def update
    post = Post.find(params[:id])
    post.update(post_text: params[:post_text], num_of_likes: params[:num_of_likes])
    render json: post
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    render json: { message: "post was sent to the trash" }
  end

end
