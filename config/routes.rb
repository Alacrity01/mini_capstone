Rails.application.routes.draw do
  namespace :api do
    get '/one_product_url' => 'products#one_product_action'
  end
end
