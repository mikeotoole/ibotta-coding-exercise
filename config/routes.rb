Rails.application.routes.draw do
  root 'retailers#index'
  resources :retailers, only: [:index, :show]
end
