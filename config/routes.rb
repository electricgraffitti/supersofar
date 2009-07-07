ActionController::Routing::Routes.draw do |map|
  map.resources :links

  map.resources :lyrics

  map.resources :songs

  map.resources :albums

  map.resources :shows

  map.resources :posts

  map.resources :articles

  map.root 'supersofar-home', :controller => "super", :action => "index"
  
end
