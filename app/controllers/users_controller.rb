require 'digest/md5'

class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    auth_key = Digest::MD5.hexdigest(params[:user][:name])

    @user = User.create(name: params[:user][:name], authentification_key: auth_key)

    if @user.save
      flash[:notice] = "Your API key is #{auth_key}"
      @user = User.new
      render new_user_path
    else
      flash[:notice] = 'Something has gone wrong.'
      @user = User.new
      render new_user_path
    end
  end
end
