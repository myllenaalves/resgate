Rails.application.routes.draw do
  resources :users
  get '/auth/google_oauth2/callback', to: 'sessions#create'
end
