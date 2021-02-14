Rails.application.routes.draw do

  root  "home#index"
  resources :companyusers
  resources :users
  resources :companies
end
