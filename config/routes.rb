Rails.application.routes.draw do
  root to: 'rooms#index'
  
  resources :rooms, only: [:new, :create, :show, :index]

end
