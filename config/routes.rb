Rails.application.routes.draw do

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'pages/index'

  get 'pages/myLearning'

  get 'pages/myLocations'

  get 'pages/myAppUsage'

  get 'pages/top-nav'

  get 'pages/side-nav'

  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
