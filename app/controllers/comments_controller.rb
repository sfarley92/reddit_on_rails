class CommentsController < ApplicationController
  before_filter :redirect_back_unless_logged_in

  def redirect_back_unless_logged_in
    redirect_to :back unless current_user.present?
  end

  def create
    @comment = current_user.comments.create(comment_params)
    redirect_to :back
  end

  # def create
  #   @comment = Comment.create(comment_params)
  #   respond_to do |format|
  #     if @comment.save
  #       format.html { redirect_to :back }
  #       format.json { render :json => @comment }
  #     else
  #       format.html { redirect_to :back }
  #       format.json { render :json => @comment.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def comment_params
    params.require(:comment).permit(:message, :link_id)
  end

end
