class Listing < ApplicationRecord
  #require 'carrierwave/orm/activerecord'
  acts_as_mappable
  belongs_to :user

  mount_uploader :image, ImageUploader
  serialize :image, JSON
end
