class ListingController < ApplicationController

  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.create(allowed_params)
    @listing.rating = 5
    @listing.user_id = current_user.id
    if @listing.save
      redirect_to current_user
    else
      redirect_to listings_new_path, alert: "Error creating Listing. Make sure to fill in all required fields."
    end
  end

  def show
      @listing = Listing.find(params[:id])
      @author_listing = @author.listings
  end

  def allowed_params
    params.require(:listing).permit(:author, :price, :openspots, :address, :city, :distance, :startDate, :endDate, :description)
  end

end
