Rails.application.routes.draw do
  root to: 'main#index'
  
  resources :employees

  resources :runs
end
