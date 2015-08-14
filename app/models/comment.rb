class Comment < ActiveRecord::Base
  belongs_to :link
  belongs_to :user

  def create
    Comment.create(params[:comment_params])
  end
end
