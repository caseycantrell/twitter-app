class UsersController < ApplicationController
  
  def index
    users = Users.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.create(
      username: params[:username],
      url: params[:url]
    )
  end

  def update
    user = User.find(params[:id])
    user.username = params[:user_id] || user.username
    user.url = params[:body] || user.url
  end

  def destroy
    user = Tweet.find(params[:id])
    user.destroy
    render json: {message: "That thing has been obliterated."}
  end

end
