class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destory]

  def create

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

  end

  def show
    
  end

  private
  
  def set_listing
    id = params[:id]
    @listing = Listing.find(id)
  end

end