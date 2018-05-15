class ListingsController < ApplicationController

	before_action :find_listing, only: [:show, :edit, :update, :destroy, :is_user?]
	before_action :authenticate_user!, only: [:new, :create]
	before_action :is_user?, only: [:edit, :update, :delete, :destroy]

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
				format.html { render 'new', danger: @listing.errors }
	      format.json { render json: @listing.errors, status: :unprocessable_entity }
	    end
	  end
	end

	def edit
	end

	def update
		respond_to do |format|
			if @listing.update(listing_params)
				format.html { redirect_to @listing, notice: 'Meme was successfully updated.' }
	      format.json { render json: @listing, status: :created, location: @listing }
			else
				format.html { rredirect_to @listing, alert: 'Something went wrong' }
	      format.json { render json: @listing.errors, status: :unprocessable_entity }
	    end
	  end
	end

	def destroy
		@listing.destroy
		redirect_to mylistings_path
	end

	def show
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

	def find_listing
		@listing = @listing = Listing.find(params[:id])
	end

	def is_user?
		unless current_user = @listing.user
			redirect_to @listing, alert: 'Sorry, you are not author of this listing'
		end
	end

end
