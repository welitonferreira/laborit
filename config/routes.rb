Rails.application.routes.draw do
  
  devise_for :users
  namespace :api do
    resources :brands, :models, :vehicles
  end
end
