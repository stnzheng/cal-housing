
class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /listings
  # GET /listings.json


  def index
    @listings = Listing.all.order(:price)
  end

  # def authenticate!
  #     if user_signed_in?
  #       @current_user = current_user
  #       true
  #     else
  #       authenticate_subletter!
  #     end

  # end

  def browse

    address = params[:address]
    @lat_lon = a=Geokit::Geocoders::GoogleGeocoder.geocode address
    @listings = Listing.within(5, :origin => [@lat_lon.lat, @lat_lon.lng])

  end


  def new
    # @listing = current_user.listings.build
    @listing = Listing.new
  end

  # GET /listings/1/edit
  def edit
    @listing = Listing.find(params[:id])
    unless current_user == @listing.user
      redirect_to(@listing, notice: "You cannot edit this listing") and return
    end
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(listing_params)

    @listing.rating = 5
    @listing.user_id = current_user.id
    address = @listing.street
    city = @listing.city
    tempLatLon = a=Geokit::Geocoders::GoogleGeocoder.geocode address +', '+ city
    @listing.lat = tempLatLon.lat
    @listing.lng = tempLatLon.lng
    @listing.save



    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end

  end

  def show
      @listing = Listing.find(params[:id])
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json

  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json

  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
    unless current_user == @listing.user
      redirect_to(@listing, notice: "You cannot delete this listing") and return
    end
  end

  private
    def set_listing
      @listing = Listing.find(params[:id])
    end

  def listing_params
    params.require(:listing).permit(:author, :price, :open_spots, :street, :city, :start_date, :end_date, :rating, :description, :image)
  end

end
