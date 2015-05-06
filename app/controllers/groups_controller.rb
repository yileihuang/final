class GroupsController < ApplicationController

	def index
		@group=Group.all
	end

  	def new
    	@group = Group.new
 	end

	def create
	  	@group = Group.create(params["group"])
	  	redirect_to groups_url
	end

	def edit
		  @group = Group.find_by_id(params[:id])
	end

	def update
	    @group = Group.find_by_id(params[:id])
	    @group.update(params["group"])
	    @group.save
	    redirect_to groups_url
	end

	def destroy
	    @group = Group.find_by_id(params[:id])
	    @group.destroy
	    redirect_to groups_url
	end  

	
end
