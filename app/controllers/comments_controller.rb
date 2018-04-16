class CommentsController < ApplicationController

  def create
    # how do i pass the post_id here??
    # find post by user id?

    # comment class is supposed to do the linking, thats what makes a diff way not likely
    # is there a way to tell what post is a user just via the comment and the user id? dont think so.
    comment = Comment.create(comment_params)
    # binding.pry
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
