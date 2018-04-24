json.extract! listing, :id, :author, :price, :open_spots, :street, :city, :distance, :start_date, :end_date, :rating, :description, :created_at, :updated_at
json.url listing_url(listing, format: :json)
