Rails.application.routes.draw do
  resources :writers
  resources :directors
  resources :actors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  get 'schauspieler', to: 'pages#schauspieler'
  get 'regisseur', to: 'pages#regisseur'
  get 'texter', to: 'pages#texter'
  get 'media', to: 'pages#media'
  get 'steckbrief', to: 'pages#steckbrief'
  get 'kontakt', to: 'pages#kontakt'
end
