class ProxyApi::BaseController < ApplicationController

  before_filter :authenticate_user_from_token!
  before_action :authenticate_user!

  def authenticate_user_from_token!
    user_email = params[:email]
    user_auth_token = params[:auth_token]
    user = user_email && User.find_by_email(user_email)

    # Notice how we use Devise.secure_compare to compare the token
    # in the database with the token given in the params, mitigating
    # timing attacks.
    if user && Devise.secure_compare(user.authentication_token, user_auth_token)
      sign_in(user, store: false)
    end
  end

end