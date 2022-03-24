Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #get 'posts/index', to: 'posts#index'
  resources :lessons
  #post 'lessons/new', to:'lessons#new'
end
