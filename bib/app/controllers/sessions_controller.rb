# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(username: params[:session][:username])
    if admin&.authenticate(params[:session][:password])
      session[:admin_id] = admin.id
      redirect_to root_path, notice: 'Successfully logged in!'
    else
      flash.now[:alert] = 'Invalid username or password'
      render :new
    end
  end

  def destroy
    session.delete(:admin_id)
    redirect_to login_path, notice: 'Successfully logged out!'
  end
end
