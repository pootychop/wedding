Rails.application.routes.draw do
  resources :registrations
  root to: 'registrations#index'
end
