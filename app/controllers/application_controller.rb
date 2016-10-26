include Pundit
class ApplicationController < ActionController::Base  
  protect_from_forgery with: :exception,
    if: Proc.new { |c| c.request.format =~ %r{application/json} }
 
  #helper_method :current_user
  before_action :authenticate_user!
  before_filter :set_user_id
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  private
#    def current_user
 #      User.find(session["current_user"])
 #   end
    def user_not_authorized
        flash[:alert] = "You are not authorized to perform this action."
        redirect_to(request.referrer || root_path)
    end
    def set_user_id
        session["current_user"] = session["current_user"] || current_user.id if current_user
    end
    def after_sign_in_path_for(resource)
        cookies[:login] = { :value => current_user.email, :expires => Time.now + 2.weeks}
    end
end
