class VisitsController < ApplicationController
	def new
    	@visit = Visit.new
 	end

	def create
	  	@visit = Visit.create(params["visit"])
	  	redirect_to groups_url
	end

	def edit
		@visit = Visit.find_by_id(params[:id])
	end

	def update
	    @visit = Visit.find_by_id(params[:id])
	    @visit.update(params["visit"])
	    @visit.save
	    redirect_to groups_url
	end
end
