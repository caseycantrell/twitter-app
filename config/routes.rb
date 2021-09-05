Rails.application.routes.draw do

#  USERS

  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

#  TWEETS

  get "/tweets" => "tweets#index"
  get "/tweets/:id" => "tweets#show"
  post "/tweets" => "tweets#create"
  patch "/tweets/:id" => "tweets#update"
  delete "/tweets/:id" => "tweets#destroy"

end
