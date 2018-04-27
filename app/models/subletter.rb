class Subletter < ApplicationRecord
  mount_uploader :avatar, ImageUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_format_of :email, with: /\@berkeley\.edu/, message: 'Make sure to sign up with your berkeley.edu'

	def self.search_by(search)
		formatted_date = Date.parse(search)#.strftime("%a, %d %b %Y")
		self.where("startDate >= ?", formatted_date)
		puts 'search_by in subletter.rb: ', formatted_date
	end

  # User Avatar Validation
  validates_integrity_of  :avatar
  validates_processing_of :avatar
 
  private
    def avatar_size_validation
      errors[:avatar] << "should be less than 500KB" if avatar.size > 0.5.megabytes
    end
end
