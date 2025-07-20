Rails.application.routes.draw do
  root "notes#index"

  resources :comments
  resources :notes
end
