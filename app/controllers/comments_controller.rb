class ComentsController < ApplicationController

  def show
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(params[:comment])
    redirect_to :back
    respond_to do |format|
      if @comment.save
        format.html { render :action => "show" }
        format.json { render :json => @comment }
      else
        format.html { render :action => "new" }
        format.json { render :json => @comment.errors, status: :unprocessable_entity }
      end
  end

  def comment_params
    params.require(:comment).permit(:message, :user_id, :link_id)
  end
end
