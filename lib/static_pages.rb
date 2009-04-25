class ApplicationController < ActionController::Base
  private
  
  def render_optional_error_file(status)
    begin
      code = ActionController::StatusCodes::SYMBOL_TO_STATUS_CODE[status]
      render :template => "/static_pages/#{code}"
    rescue
      super
    end
  end
end