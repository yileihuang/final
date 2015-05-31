class UsersController < ApplicationController
skip_before_action :auth, only: [:new, :create]

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params["id"])
  end

  def new
    @user = User.new
  end

  def create
    @user=User.create(params["user"])
    upload_photo
    @user.photo=@user.id.to_s+".jpg"
    @user.save
    if @user.valid?
      redirect_to users_path, notice: "registered successfully!"
    else
      render "new"
    end
  end

  def edit
    @user = User.find_by(id: params["id"])
  end

  def update
    @user = User.find_by(id: params["id"])
    @user.update(params["user"])
    upload_photo
    @user.photo=@user.id.to_s+".jpg"
    @user.save
    redirect_to users_path
  end

  def destroy
    @user = User.find_by(id: params["id"])
    @user.destroy
    redirect_to users_path
  end

  def upload_photo
    # read the uploaded file
    file = params["photo"]
    if file.present?
      file_data = file.read

      # write the uploaded file to a new file somewhere
      the_file = Rails.root.join("app","assets","images", "#{@user.id}.jpg")
      File.open(the_file, "wb") do |f|
        f.write(file_data)
      end
    end
  end
end
