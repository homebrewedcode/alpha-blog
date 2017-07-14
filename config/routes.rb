Rails.application.routes.draw do
  root "pages#home"
  get "about", to: "pages#about"

  resources :articles #basically add all the routes for routes automagically
  resources :users, except: [:new]
  get 'signup', to: 'users#new'

  resources :categories, except: [:destroy]

end
