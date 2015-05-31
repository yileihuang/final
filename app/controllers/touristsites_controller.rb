class TouristsitesController < ApplicationController

  def new
    @touristsite = Touristsite.new
  end

  def create
    @touristsite = Touristsite.create(params[:touristsite])
    upload_photo
    @touristsite.image=@touristsite.id.to_s+"ts.jpg"
    @touristsite.save
    redirect_to root_path
  end

  def upload_photo
    # read the uploaded file
    file = params["image"]
    if file.present?
      file_data = file.read

      # write the uploaded file to a new file somewhere
      the_file = Rails.root.join("app","assets","images", "#{@touristsite.id}ts.jpg")
      File.open(the_file, "wb") do |f|
        f.write(file_data)
      end
    end
  end

end
