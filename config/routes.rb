Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # City endpoints
  get '/cities', to: 'city#index'

  # Neighborhood endpoints
  get '/neighborhoods', to: 'neighborhood#index'
  get '/neighborhoods/city/:city_id', to: 'neighborhood#getNeighborhoodsByCity'
  get '/neighborhoods/borough/:borough', to: 'neighborhood#getNeighborhoodsByBorough'

end
