Rails.application.routes.draw do

  devise_for :candidates
  devise_for :employers
  resource :companies
  root  "home#index"

  
end
