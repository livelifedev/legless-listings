class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destory]

  def create
    a = 1
    byebug
    a += 2
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

end