Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  # source: https://stackoverflow.com/questions/10009324/rspec-and-non-restful-routes
  get 'similar_movies/:title' => 'movies#search', as: :search_similar_movies
end
