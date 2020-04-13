Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#new'
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create] do
    resource :dashboard, only: [:show, :edit, :update]
  end
end
