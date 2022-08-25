Rails.application.routes.draw do
  namespace :api do
    get "/quotes" => "quotes#index"
    post "/quotes" => "quotes#create"
    get "/quotes/:id" => "quotes#show"
    patch "/quotes/:id" => "quotes#update"
    delete "/quotes/:id" => "quotes#destroy"

    get "/sections" => "sections#index"
    post "/sections" => "sections#create"
    get "/sections/:id" => "sections#show"
    patch "/sections/:id" => "sections#update"

    get "/services" => "offered_services#index"
    post "/services" => "offered_services#create"
    get "/services/:id" => "offered_services#show"
    delete "/services/:id" => "offered_services#destroy"
    patch "/services/:id" => "offered_services#update"

    post "/users" => "users#create"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

  end
end
