class PostController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all
  end

  def create
    post = Post.new(post_params)
    post.save
    @posts = Post.all
  end

  private
    def post_params
      params.require(:post).permit(:post_text)
    end
end
