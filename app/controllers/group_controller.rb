class GroupController < ApplicationController

	def index
		@group=Group.all
	end
	
end
