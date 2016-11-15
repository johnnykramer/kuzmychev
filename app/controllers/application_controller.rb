class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  add_flash_types :green, :red, :blue, :yellow
end
