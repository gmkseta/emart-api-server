Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # config/routes.rb
  resources :users, param: :_username
  post '/auth/login', to: 'authentication#login'
  post '/user_auth', to: 'user_auths#create'
  get '/*a', to: 'application#not_found'
end
