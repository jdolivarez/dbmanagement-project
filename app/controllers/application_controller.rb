class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(employee)
    items_path
 end
 def after_sign_out_path_for(employee)
 pages_path
 end
 def after_sign_out_path_for(user)
 pages_path
 end

end



