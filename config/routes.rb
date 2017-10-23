Rails.application.routes.draw do
  root to: 'pages#home'
  get 'rsvp', to: 'pages#rsvp'
end
