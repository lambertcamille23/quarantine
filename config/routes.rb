Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories, only: [] do
    resources :events, only: [:index]
  end
end
