Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get  'about', to:'pages#about'

  #This gives me all the paths to GET,PATCH, PUT,DELETE,POST
  resources :articles

  get  'signup', to: 'users#new'

  # Two ways you can accomplish the one below:
  resources :users, except: [:new]
  #resources :users
  #post 'users', to: 'users#create'
end
