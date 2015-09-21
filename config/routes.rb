Rails.application.routes.draw do
  get 'recipes/index'

  get 'recipes_controller/index'

  root 'pages#home'
  get '/home', to: 'pages#home'

  resources :recipes do
    member do
      post 'like'
    end
  end

end
