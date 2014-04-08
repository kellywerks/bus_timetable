BusTimetable::Application.routes.draw do
root :to => 'stations#index'
 resources :stations
 resources :lines
 resources :stops
 resources :publics
 resources :buses
 resources :maps
end
