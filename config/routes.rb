Rails.application.routes.draw do
  get 'craps/show'
  get 'craps/index'
  get 'craps/destroy'
  get 'craps/new'
  get 'craps/create'
  root "static_pages#home"

  get "about", to: "static_pages#about"
  get "contact_us", to: "static_pages#contact_us"
  get "help", to: "static_pages#help"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :military_times

  resources :craps
end
