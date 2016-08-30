Rails.application.routes.draw do
  resources :registrations, only: [:new, :create, :show]
  root to: 'registrations#new'
end
