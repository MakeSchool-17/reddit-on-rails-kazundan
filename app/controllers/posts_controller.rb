class PostsController < ApplicationController
  def create

    # logic goes here
    # ACTUALLY CREATE THE POST HERE

    post = Post.new(post_params)
    post.save

    # redirect, send http response code, or render a template
    # The default action: render "posts/create"
    # The default runs only if there is no redirect, other render action, or
    # head call.
  end

  def update
    post = Post.find(params[:id])
    post.title = post_params["title"]
    post.content = post_params["content"]
    post.save
  end

private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
