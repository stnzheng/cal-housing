class SublettersController < ApplicationController

	def new
		@subletter_new = Subletter.new
		# redirect_to index
	end

	def show
		@subletter = Subletter.find(params[:id])
	end

end
