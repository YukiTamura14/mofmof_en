Rails.application.routes.draw do
  root to: 'rooms#index'
  
  resources :rooms, only: [ :index, :show, :new, :create, :destroy]

end
