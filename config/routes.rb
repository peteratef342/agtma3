Rails.application.routes.draw do
 


  resources :redeem_records
  get 'home/search'

  resources :people
  resources :families, :except => [:show]
  resources :colleges, :except => [:show]
  resources :events, :except => [:show]
  resources :redeem_items, :except => [:show]
  resources :records, :only => [:destroy, :create]

  root 'home#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
