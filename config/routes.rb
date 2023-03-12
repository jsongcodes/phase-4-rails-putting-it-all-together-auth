Rails.application.routes.draw do
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  destroy '/logout', to 'sessions#destroy'
  get '/me', to: 'users#show'
  resources :recipes, only: [:index, :create]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
