class UsersController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to 'home#dashboard'
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end


  # def login
  #   @user = User.koala(request.env['omniauth.auth']['credentials'])
  # end
end







