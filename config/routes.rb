Rails.application.routes.draw do
  root "queries#new"
  resources :queries, only: [:index, :create]

  get "up" => "rails/health#show", as: :rails_health_check
end
