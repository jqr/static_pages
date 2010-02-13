require File.join(File.dirname(__FILE__), 'lib', 'static_pages')

config.to_prepare do
  ::ApplicationController.send(:include, StaticPages)
end

