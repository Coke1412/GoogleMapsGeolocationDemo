Rails.application.routes.draw do
  get 'home/index'
  
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  get 'locations/get_location'
  get 'locations/find_address'

  root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
