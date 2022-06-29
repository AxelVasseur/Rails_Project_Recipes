Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/signup', to: 'users#new'
  post '/signin', to: 'users#create'
  get '/', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/home', to: 'sessions#home'

end
