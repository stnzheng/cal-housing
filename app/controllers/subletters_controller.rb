class SublettersController < ApplicationController

	def new
		@subletter_new = Subletter.new
		# redirect_to index
	end

	def show
		@subletter = Subletter.find(params[:id])
		
	    unless @subletter == current_subletter
	      redirect_to :back, :alert => "Access denied."
	    end
	end
end
