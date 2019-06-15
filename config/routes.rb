Rails.application.routes.draw do
  devise_for :users
  resources :podcasts
  resources :episodes 
  root 'podcasts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
