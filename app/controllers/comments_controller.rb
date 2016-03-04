class CommentsController < ApplicationController
  def new
  end

  def update
      comment = Comment.find(params[:id])
      comment.content = comment_params["content"]
      comment.save
  end

  def destroy
      Comment.find(params[:id]).destroy
      flash[:success] = "Comment deleted"
  end

  def create
      comment = Comment.new(comment_params)
      comment.save
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
