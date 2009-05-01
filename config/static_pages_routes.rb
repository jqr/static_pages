ActionController::Routing::Routes.draw do |map|
  map.connect ':action/:id', :controller => 'static_pages'
end
