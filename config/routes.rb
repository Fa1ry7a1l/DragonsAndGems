Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#defffff"
  get '/register', to: 'register#new'
  post '/register', to: 'register#create'

  get '/login', to: 'login#new'
  post '/login', to: 'login#create'
  get '/logout', to: 'login#destroy'
  get 'auth/failure', to: redirect('/')
  get '/auth/:provider/callback', to: 'login#omniauth'

  get '/room/create', to: 'room#new'
  post '/room/create', to: 'room#create'
  get '/room/find', to: 'room#find'
  get '/room/:tag_lobby', to: 'room#show'
  post '/room/find', to: 'room#join'

end
