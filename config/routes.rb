ActionController::Routing::Routes.draw do |map|
  map.connect ':action', :controller => 'static_pages'
end
