Rails.application.routes.draw do
  namespace :api do
    get '/products_controller' => 'products#index'
    post '/products_controller' => 'products#create'
    get '/products_controller/:id' => 'products#show'
  end
end
