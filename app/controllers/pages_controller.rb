class PagesController < ApplicationController
  def index
    @links = Link.order('created_at DESC').page(1).per_page(15)
    # @links = Link.all.paginate(page: (page_params[:page] || 1)).order('created_at DESC')
  end

  # def page_params
  #   params.permit(:page)
  # end
end
