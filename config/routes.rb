Rails.application.routes.draw do
  get '/auth/google_oauth2', as: 'google_oauth2_login'
  get '/auth/google_oauth2/callback', to: 'sessions#create'
end
