class ChatController < ApplicationController

  def create
    @comment = current_user.comments.create(comment_params2)
    redirect_to :back
  end

  def new
    @comment = Comment.new
  end

  def comment_params2
    params.requre(:comment).permit(:message)
  end
end
