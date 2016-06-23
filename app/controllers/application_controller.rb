class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, alert: exception.message
  end

  def CheckIfBeingHacked(some_id, model)
    unless some_id == model.where(:user_id => current_user.id)[0].id
    redirect_to root_path, :alert => some_id
    end
  end
end
