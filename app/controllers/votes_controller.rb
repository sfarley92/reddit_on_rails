class VotesController < ApplicationController
  before_filter :redirect_back_unless_logged_in

  def redirect_back_unless_logged_in
    redirect_to :back unless current_user.present?
  end

  def create
    @vote = current_user.votes.create(votes_params)
    redirect_to :back
  end

  def show
    @link = Link.find(params[:id])
  end

  def votes_params
    params.require(:vote).permit(:link_id, :up)
  end
end
