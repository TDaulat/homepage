class SessionsController < ApplicationController
  def create
    @user = User.from_omniauth(auth_hash)
    session[:user_id] = @user.id
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

  def testing_login
    if Rails.env.test?
      name = params[:admin] ? 'test_admin_user' : 'test_user'
      @user = User.find_or_create_by_name(:name => name, :admin => params[:admin])
      session[:user_id] = @user.id
      redirect_to root_url
    else
      #throw 404?
      redirect_to root_url
    end
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end