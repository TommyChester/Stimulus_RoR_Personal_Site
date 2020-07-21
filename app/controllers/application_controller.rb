class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  http_basic_authenticate_with name: 'tommyC', password: 'fuckyou', except: [:index, :show]

end
