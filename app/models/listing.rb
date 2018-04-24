class Listing < ApplicationRecord
  #require 'carrierwave/orm/activerecord'
  belongs_to :user

  mount_uploader :image, ImageUploader
  serialize :image, JSON
end
