Rails.application.routes.draw do
  resources :charactors
  resources :clans
  resources :occupations
  resources :servers
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
