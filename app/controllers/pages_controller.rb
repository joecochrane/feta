class PagesController < ApplicationController



   def index
	@choice = params[:part]
	# @cheeses = Cheese.where('Gitem = ?', params[:part])
	@cheeses = Cheese.includes(:product).all


	
  end

  def about
  end

  def admin
  end

  def contact
  end
end
