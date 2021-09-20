Rails.application.routes.draw do
  namespace :api do
    get "/quotes" => "quotes#index"
    post "/quotes" => "quotes#create"
    get "/quotes/:id" => "quotes#show"
    patch "/quotes/:id" => "quotes#update"
    delete "/quotes/:id" => "quotes#destroy"

    get "/services" => "offered_services#index"
    post "/services" => "offered_services#create"
    get "/services/:id" => "offered_services#show"
    delete "services/:id" => "offered_services#destroy"
    patch "/services/:id" => "offered_services#update"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

  end
end
