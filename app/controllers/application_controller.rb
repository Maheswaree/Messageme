class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?

    def current_user
        @current_user ||=User2.find(session[:user_id]) if session[:user_id]
    end
    def logged_in?
        !!current_user
    end
    def require_user
      if !logged_in?
        flash[:error] = "You must be logged in"
      end
    end
end
