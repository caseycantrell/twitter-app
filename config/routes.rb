Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  get "/tweets" => "tweets#index"
  get "/tweets/:id" => "tweets#show"
  post "/tweets" => "tweets#create"
  patch "/tweets/:id" => "tweets#update"
  delete "/tweets/:id" => "tweets#destroy"

end
