class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user! , :only => [:index, :show, :update]
  skip_before_action :verify_authenticity_token


  def set_session
  	session[:source] = parmas[:q] if parmas[:q]
  end

end
