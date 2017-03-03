class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
     def current
        User.find(session[:user_id]) if session[:user_id]
    end
end
