class ListingsController < ApplicationController

	def index
		@listings = Listing.all
	end

	def new
		@listing = Listing.new
	end

	def create
		@listing = Listing.new(listing_params)
		@listing.user = current_user
		respond_to do |format|
			if @listing.save
				format.html { redirect_to @listing, notice: 'Meme was successfully created.' }
	      format.json { render json: @listing, status: :created, location: @listing }
			else
				format.html { render 'new' }
	      format.json { render json: @listing.errors, status: :unprocessable_entity }
	    end
	  end
	end

	def show
		@listing = Listing.find(params[:id])
	end

	def search
		@listings = Listing.search(params)
	end

	def mylistings
		@listings = Listing.where(user: current_user)
	end

	private

	def listing_params
		params.require(:listing).permit(:title, :description, :city, :state, :zipcode, :category_id, :subcategory_id)
	end

end
