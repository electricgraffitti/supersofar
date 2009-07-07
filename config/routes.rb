ActionController::Routing::Routes.draw do |map|
  map.resources :links

  map.resources :lyrics

  map.resources :songs

  map.resources :albums

  map.resources :shows

  map.resources :posts

  map.resources :articles
  
  map.blog 'supersofar-blog', :controller => "blog", :action => "index"
  map.home 'supersofar-home', :controller => "super", :action => "index"

  map.root :controller => "super", :action => "index"
  
end
