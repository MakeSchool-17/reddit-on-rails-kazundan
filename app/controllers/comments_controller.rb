class CommentsController < ApplicationController
  def new
  end

  def update
      comment = Comment.find(params[:id])
      comment.content = post_params["content"]
      comment.save
  end

  def destroy
      Comment.find(params[:id]).destroy
      flash[:success] = "Comment deleted"
  end

  def post_params
    params.require(:comment).permit(:content)
  end
end
