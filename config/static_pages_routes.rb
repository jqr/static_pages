ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'static_pages'
  map.static_page ':action/:id', :controller => 'static_pages'
end
