Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/new'
  post '/users', to: 'users#create'

  get '/sessions', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  post '/sessions', to: 'sessions#destroy'

  get '/welcome', to: 'welcome#index'

end
