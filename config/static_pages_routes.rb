ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'static_pages'
  map.connect ':action/:id', :controller => 'static_pages'
end
