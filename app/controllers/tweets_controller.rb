class TweetsController < ApplicationController

  def index
    tweets = Tweets.all
    render json: tweets
  end

  def show
    tweet = Tweet.find(params[:id])
    render json: tweet
  end

  def create
    tweet = Tweet.create(
      user_id: params[:user_id],
      body: params[:body],
      date_posted: params[:date_posted]
    )
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
