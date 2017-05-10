Rails.application.routes.draw do
  get 'book/index'

  get 'list/index'

  get 'sessions/new'

  root 'home#index'

  get 'register/index'

  get 'home/index'

  get 'detail/index'

  post 'register/save'

  get    '/login',   to: 'sessions#new'

  get '/logout',  to: 'sessions#destroy'

  post   '/login',   to: 'sessions#create'

  delete '/logout',  to: 'sessions#destroy'

  post '/search', to: 'list#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
