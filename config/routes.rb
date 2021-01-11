Rails.application.routes.draw do
  get '/auth/google_oauth2/callback', to: 'sessions#create'
end
