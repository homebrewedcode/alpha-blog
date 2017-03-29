Rails.application.routes.draw do
  root "pages#home"
  get "about", to: "pages#about"

  resources :articles #basically gets the full crud path for articles

end
