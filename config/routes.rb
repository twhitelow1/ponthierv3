Rails.application.routes.draw do
  namespace :api do
    get "/quotes" => "quotes#index"
    post "/quotes" => "quotes#create"
    get "/quotes/:id" => "quotes#show"
    patch "/quotes/:id" => "quotes#update"
    delete "/quotes/:id" => "quotes#destroy"
  end
end
