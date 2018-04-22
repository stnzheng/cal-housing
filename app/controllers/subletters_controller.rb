class SublettersController < ApplicationController

	def new
		@subletter_new = Subletter.new
		# redirect_to index
	end


end
