# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application

#config.autoload_paths += %W(#{config.root}/extras)
#config.active_record.schema_format = :ruby