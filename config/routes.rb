Rails.application.routes.draw do
  root 'info#index'
  resources :news, only: :index
end
