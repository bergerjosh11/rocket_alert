Rails.application.routes.draw do
  resources :alerts, only: [:new, :create]
  root 'alerts#new'
end
