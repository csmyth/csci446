class UserSessionsController < ApplicationController
  # GET /user_sessions/new
  # GET /user_sessions/new.json
  def new
    @user_session = UserSession.new
  end

  # POST /user_sessions
  # POST /user_sessions.json
  def create
    @user_session = UserSession.new(params[:user_session])

    respond_to do |format|
      if @user_session.save
        format.html { redirect_to users_path, notice: "Welcome back, 
        			#{current_user.first_name} #{current_user.last_name}!" }
        format.json { render json: users_path, status: :created, location: @user_session }
      else
        format.html { render action: "new" }
        format.json { render json: @user_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_sessions/1
  # DELETE /user_sessions/1.json
  def destroy
    current_user_session.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "Successfully logged out" }
      format.json { head :no_content }
    end
  end
end
