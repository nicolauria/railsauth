Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'session#new'
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resource :dashboard, only: [:create, :show, :edit, :update]
end
