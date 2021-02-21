Rails.application.routes.draw do

  devise_for :candidates
  devise_for :employers, controllers: { registrations: "registrations"}
  resource :companies 
  root  "home#index"

  
end
