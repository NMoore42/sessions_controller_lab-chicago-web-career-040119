require 'pry'
class SessionsController < ApplicationController
  def new

  end

  def create
    session[:name] = params[:name]
    #binding.pry
    redirect_to '/'
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

end
