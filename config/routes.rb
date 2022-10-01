Rails.application.routes.draw do
  devise_for :users
  root "pages#home"

  get 'schauspieler', to: 'pages#schauspieler'
  get 'regisseur', to: 'pages#regisseur'
  get 'texter', to: 'pages#texter'
  get 'media', to: 'pages#media'
  get 'steckbrief', to: 'pages#steckbrief'
  get 'kontakt', to: 'pages#kontakt'

  resources :writers
  resources :directors
  resources :actors
end
