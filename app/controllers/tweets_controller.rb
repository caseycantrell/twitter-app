class TweetsController < ApplicationController

  def index
    tweets = Tweet.all
    render json: tweets
  end

  def show
    tweet = Tweet.find(params[:id])
    render json: tweet
  end

  def create
    tweet = Tweet.new(
      user_id: params[:user_id],
      body: params[:body],
      date_posted: params[:date_posted]
    )
    if tweet.save
      render json: tweet
    else
      render json: {errors: tweet.errors.full_messages}
    end
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.user_id = params[:user_id] || tweet.user_id
    tweet.body = params[:body] || tweet.body
    tweet.date_posted = params[:date_posted] || tweet.date_posted
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    render json: {message: "That thing has been obliterated."}
  end

end
