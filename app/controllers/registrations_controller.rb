class RegistrationsController < Devise::RegistrationsController

  protected

  def after_sign_in_path_for(resource)
     proxy_api_detail_user_path(current_user.id)  if user_signed_in? 
  end

end