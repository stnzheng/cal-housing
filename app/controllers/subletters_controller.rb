class SublettersController < ApplicationController

	def new
		@subletter_new = Subletter.new
	end

  def index
    if params[:search]
    	@search_term = params[:search]
    	puts 'Search for date: ', @search_term
    	@subletters_list = Subletter.all
    	@subletters = []
    	if @subletters_list
	    	@subletters_list.each do |x|
	    		if x.startDate && x.startDate > Date.parse(@search_term)
	    				@subletters.push(x)
	    		end
	    	end
	    end
    	# @subletters = @subletters.search_by(@search_term)
    end
  end

	def show
		@subletter = Subletter.find(params[:id])

	    unless @subletter == current_subletter
	      redirect_to :back, :alert => "Access denied."
	    end
	end
end
