class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :listings

	def show
		@user= User.find(params[:id])
		
	  unless @user == current_user
	    redirect_to :back, :alert => "Access denied."
	  end
	end
	
end
