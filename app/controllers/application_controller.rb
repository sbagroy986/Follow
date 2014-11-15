class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
def after_sign_in_path_for(resource_or_scope)
    if resource.sign_in_count == 1
       view_dash_path
    else
       root_path
    end
end
end
