class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @user = current_user
    @post = @user.posts.new
  end

  def create
    @user = current_user
    @post = @user.posts.new(post_params)
    if @post.save
    flash[:notice] = "Post successfully added!"
      redirect_to  posts_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:picture, :caption)
  end
end
