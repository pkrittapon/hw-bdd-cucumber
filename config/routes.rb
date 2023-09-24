Rottenpotatoes::Application.routes.draw do
  devise_for :moviegoers, controllers:{
    omniauth_callbacks: 'moviegoer/omniauth_callbacks',
    session: 'moviegoer/session',
    registrations: 'moviegoer/registrations'
  }
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  post '/movies/search_tmdb' => 'movies#search_tmdb', :as => 'search_tmdb'
end
