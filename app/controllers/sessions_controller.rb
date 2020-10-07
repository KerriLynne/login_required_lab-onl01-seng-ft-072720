class SessionsController < ApplicationController
  
  def new
  end
  #login page

  def home
  end
  #user home page

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/new'
    else
      session[:name] = params[:name]
      redirect_to '/home'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/new'
  end

end
