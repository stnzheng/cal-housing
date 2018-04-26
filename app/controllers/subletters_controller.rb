class SublettersController < ApplicationController

	def new
		@subletter_new = Subletter.new
	end

  def index
    startLeaseDate = params[:startDate]
    puts "start Lease date %i", startLeaseDate
    @subletters = Subletter.all.select { |s| s.startDate == startLeaseDate }
  end

	def show
		@subletter = Subletter.find(params[:id])

	    unless @subletter == current_subletter
	      redirect_to :back, :alert => "Access denied."
	    end
	end
end
