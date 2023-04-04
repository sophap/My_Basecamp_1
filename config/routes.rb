Rails.application.routes.draw do
  devise_for :users
  resources :projects
  #get 'home/project'
  #root 'home#project'
  root 'projects#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
end
