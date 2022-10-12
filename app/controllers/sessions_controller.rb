class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(request.env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to users_path, notice: 'Signed in.'
  end

  def destroy
    session[:user_id] = nil
    redirect_to users_path, notice: 'Signed out.'
  end
  # def create
  #   user_info = request.env['omniauth.auth']
  #   raise user_info.to_yaml
  # end
end
