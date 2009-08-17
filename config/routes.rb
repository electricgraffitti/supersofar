ActionController::Routing::Routes.draw do |map|

  map.admin_login "admin-login", :controller => "admin_sessions", :action => "new"
  map.admin_logout "admin-logout", :controller => "admin_sessions", :action => "destroy"
  
  map.fan_login "superfan-login", :controller => "fan_sessions", :action => "new"
  map.fan_logout "superfan-logout", :controller => "fan_sessions", :action => "destroy"

  map.resources :profiles
  map.resources :fan_sessions
  map.resources :fans
  map.resources :fan_statuses
  map.resources :link_types
  map.resources :photos, :has_many => :comments
  map.resources :photo_albums  
  map.resources :admin_sessions
  map.resources :admins
  map.resources :links
  map.resources :lyrics
  map.resources :songs, :has_many => :comments
  map.resources :albums
  map.resources :shows, :has_many => :comments
  map.resources :posts, :has_many => :comments
  map.resources :articles, :has_many => :comments
  map.resources :blogs
  
  map.dashboard 'supersofar-admin', :controller => 'admins', :action => 'index'
  map.blog 'supersofar-blog', :controller => "blog", :action => "index"
  map.home 'supersofar-home', :controller => "super", :action => "index"

  map.root :controller => "super", :action => "index"
  
end
