class SessionsController < ApplicationController

  def create
    user = User.find_by(name: params[:user][:name])
    user = user.try(:authenticate, params[:user][:password])

    session[:user_id] = @user.id
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

  def new
  end
end
