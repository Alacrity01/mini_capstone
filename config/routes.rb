Rails.application.routes.draw do
  namespace :api do
    get '/products_controller/index' => 'products#index'
    get '/products_controller/:id' => 'products#show'
  end
end
