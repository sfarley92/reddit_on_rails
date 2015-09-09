class VotesController < ApplicationController

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
