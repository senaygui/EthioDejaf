class StaticPagesController < ApplicationController
  def home
  	@businesses = Business.all
		if params[:search]
    		@businesses = Business.search(params[:search]).order("created_at DESC")
  		else
    		@businesses = Business.all.order('created_at DESC')
  		end
  end

  def contact
  end

  def about
  end
end
