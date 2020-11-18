Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  post '/login' => 'sessions#create'
  post '/login' => 'users#create'
  get '/login' => 'users#new'
  get '/login' => 'sessions#new'
end
