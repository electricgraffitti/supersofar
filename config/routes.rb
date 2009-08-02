ActionController::Routing::Routes.draw do |map|
  
  map.admin_login "admin-login", :controller => "admin_sessions", :action => "new"
  map.admin_logout "admin-logout", :controller => "admin_sessions", :action => "destroy"
  
  map.resources :photos
  map.resources :photo_albums  
  map.resources :admin_sessions
  map.resources :admins
  map.resources :links
  map.resources :lyrics
  map.resources :songs
  map.resources :albums
  map.resources :shows
  map.resources :posts
  map.resources :articles
  map.resources :blogs
  
  map.dashboard 'supersofar-admin', :controller => 'admins', :action => 'index'
  map.blog 'supersofar-blog', :controller => "blog", :action => "index"
  map.home 'supersofar-home', :controller => "super", :action => "index"

  map.root :controller => "super", :action => "index"
  
end
