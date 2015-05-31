class GroupsController < ApplicationController
skip_before_action :auth, only: [:index, :show]

	def index
		@group=Group.all
	end

  	def new
    	@member=Member.new
    	@group = Group.new
 	end

	def create
	  	@member=Member.new
	  	@group = Group.create(params["group"])
	  	upload_photo
	  	@group.image=@group.name+".jpg"
	    @group.save
	  	redirect_to groups_url
	end

	def edit
		@member=Member.new
		@group = Group.find_by_id(params[:id])
	end

	def update
	    @member=Member.new
	    @group = Group.find_by_id(params[:id])
	    @group.update(params["group"])
	    upload_photo
	    @group.image=@group.name+".jpg"
	    @group.save
	    redirect_to groups_url
	end

	def destroy
	    @group = Group.find_by_id(params[:id])
	    @group.destroy
	    redirect_to groups_url
	end  

	def upload_photo
    # read the uploaded file
    file = params["image"]
    if file.present?
      file_data = file.read

      # write the uploaded file to a new file somewhere
      the_file = Rails.root.join("app","assets","images", @group.name+".jpg")
      File.open(the_file, "wb") do |f|
        f.write(file_data)
      end
    end
  end
	
end
