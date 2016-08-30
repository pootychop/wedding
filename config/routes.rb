Rails.application.routes.draw do
  resources :registrations, only: [:new, :create]
  root to: 'registrations#new'
end
