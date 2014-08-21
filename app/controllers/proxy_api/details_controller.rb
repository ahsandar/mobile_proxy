class ProxyApi::DetailsController < ProxyApi::BaseController

  before_filter :get_current_user

  def user
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  private
  
  def get_current_user
    @user = current_user
  end
end