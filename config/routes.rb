Rails.application.routes.draw do
  root 'welcome#index'
  resources :users, only: [:create]
  resources :surveys, only: [:index, :create]
  resources :suggestions, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
