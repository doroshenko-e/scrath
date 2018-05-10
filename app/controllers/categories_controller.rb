class CategoriesController < ApplicationController

	def index
		@categories = Category.all
		@community = @categories[0]
		@housing = @categories[1]
		@serices = @categories[2]
		@personals = @categories[3]
		@for_sale = @categories[4]
		@jobs = @categories[5]
	end

	def show
		@category = Category.find(params[:id])
	end

end
