class VisitsController < ApplicationController
	
	def index
    	@visits = Visit.where(group_id: params[:group_id])
   		@group = Group.find_by(id: params[:group_id])
  	end

	def new
    	@visit = Visit.new
    	@group = Group.find_by(id: params[:group_id])
 	end

	def create
	  	@group = Group.find_by(id: params[:group_id])
    	@visit = Visit.create(params[:visit])
    	@visit.group = @group
    	@visit.save
    	redirect_to group_path(@group)
	end

	def destroy
	    @group = Group.find_by(id: params[:group_id])
	    @visit = Visit.find_by_id(params[:id])
	    @visit.destroy
	    redirect_to group_path(@group)
  end

end
