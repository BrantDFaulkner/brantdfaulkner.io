class SessionsController < ApplicationController
  def new

  end

  def create
    admin = Admin.find_by_name(params[:admin][:name])
    if admin && admin.password == (params[:admin][:password])
      puts "Great Success======================="
      session[:admin_id] = admin.id
      redirect_to root_path
    else
      # sleep 30
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end