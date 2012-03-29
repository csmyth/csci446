class SessionsController < ApplicationController
  def new
  end

  def create
  	admin = Admin.find_by_username(params[:username])
  	if admin and admin.authenticate(params[:password])
  		session[:admin_id] = admin.id
  		redirect_to admins_url
  	else
  		redirect_to login_url, alert: "Invalid username/password combination"
  	end
  end

  def destroy
  	session[:admin_id] = nil
  	redirect_to admins_url, notice: "Logged out"
  end
end
