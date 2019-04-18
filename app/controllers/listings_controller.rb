class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destory]

  def create
    @listing = Listing.create(listing_params)
    byebug
  end

  def index
    @listings = Listing.all
  end

  def update

  end

  def edit

  end

  def destroy

  end

  def new
    @listing = Listing.new
    @breeds = Breed.all
    @sexes = Listing.sexes.keys
  end

  def show
    
  end

  private

  def set_listing
    id = params[:id]
    @listing = Listing.find(id)
  end

  def lisitng_params
    params.require(:listing).permit(:title, :description, :breed_id, :sex, :price, :deposit, :date_of_birth, :diet)
  end

end