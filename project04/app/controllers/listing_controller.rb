class ListingController < ApplicationController
  def index
  	@articles = Article.order(:creation_date)
  end
end
