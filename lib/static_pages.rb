module StaticPages
  private
  
  def render_optional_error_file(status)
    begin
      code = ActionController::StatusCodes::SYMBOL_TO_STATUS_CODE[status]
      render :status => status, :template => "/static_pages/#{code}"
    rescue
      super
    end
  end
end

class ActionController::Routing::RouteSet
  def load_routes_with_static_pages!
    static_pages_routes = File.join(File.dirname(__FILE__), 
                       *%w[.. config static_pages_routes.rb])
    unless configuration_files.include? static_pages_routes
      add_configuration_file(static_pages_routes)
    end
    load_routes_without_static_pages!
  end

  alias_method_chain :load_routes!, :static_pages
end