class PagesController < ApplicationController
  def index
    @users = User.order('created_at DESC')
    @links = Link.order('created_at DESC').page(1).per_page(100)
    # @links = Link.all.paginate(page: (page_params[:page] || 1)).order('created_at DESC')
  end

  # def page_params
  #   params.permit(:page)
  # end
end
