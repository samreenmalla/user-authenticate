Rails.application.routes.draw do

	root 'dashboard#show'

  get 'users/new'

  #get 'users/create'

  get 'login', to: 'sessions#new'

  #get 'sessions/create'

  get 'logout', to: 'sessions#destroy'

  #get 'dashboard/show'

  resources :sessions, only: [:create]
  resources :users, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
