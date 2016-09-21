class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_login

  private

  # This will be required when people sign in
  def require_login
    if ((current_user == nil) || (current_user.role_id == Role.find_by(name: 'inactive').id))
      logger.debug current_user
      flash[:notice] = "You must be logged in! Or, you have not been authorized!"
      redirect_to login_path # redirect to login page
    end
  end

end
