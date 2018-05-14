class SubcategoriesController < ApplicationController

	def index
	end

	def show
		@subcategory = Subcategory.find(params[:id])
		@listings = Listing.where(subcategory_id: params[:id])
	end

end
