class SessionsController < ApplicationController
  skip_before_action :auth
  layout false


  def create
    @user=User.find_by(email: params["email"])
    if @user
    if @user.authenticate(params["password"])
      session["user_id"] = @user.id
      redirect_to root_url, notice: "logged in successfully!"
    else
      redirect_to new_session_url, alert: "Please try again!"
    end
    else redirect_to new_session_url, alert: "Please try again!"
    end 
    # params["email"] => the email address
    # params["password"] => the password
    # Do authentication
    # Redirect to the root_path
    # Display a notice that login was either successful or unsuccessful
  end

  def destroy
    # Do sign-out
    session["user_id"]=nil
    redirect_to root_url, notice: "see ya later"
  end

end
