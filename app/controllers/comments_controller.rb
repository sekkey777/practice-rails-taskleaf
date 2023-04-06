class CommentsController < ApplicationController
  def create
    comment = current_user.comments.new(comment_params)
    comment.save
    redirect_to post_path(params[:post_id])
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to book_path(params[:book_id])
  end

  private

  def comment_params
    params.permit(:comment, :post_id)
  end
end
