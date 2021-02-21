Rails.application.routes.draw do

  devise_for :candidates
  devise_for :employers
  root  "home#index"

  
end
