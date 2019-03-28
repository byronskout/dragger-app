Rails.application.routes.draw do
  get 'queen_stats/no-test--framework'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :queens
  resources :queen_stats
  resources :teams, only: [:index]

  resources :fans, only:[:index, :show] do
    resources :teams, except: [:index]
  end

  get '/login', to: 'sessions#new', as: 'login'
  post '/login' => 'sessions#create', as: 'sessions'
  post '/logout', to: 'sessions#destroy', as: 'logout'

  get '/signup', to: 'fans#new'
  post '/signup', to: 'fans#create'
  # get '/fans/:id', to: 'fans#show'

  root :to => "hello#index"



end
