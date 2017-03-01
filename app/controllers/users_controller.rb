class UsersController < ApplicationController
  def index
  end

  def create
        user = User.new (params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation))
        if !user.valid?
            @user = user;
            redirect_to "/"
        end
        user.save
      
        session[:user_id] = user.id
        redirect_to "/"
  end

  def login
        user = User.find_by(:email => params[:user][:email])
        
        is_valid = user.authenticate(params[:user][:password])
        
        if !is_valid
            flash[:errors] = ["***Denied....Try Again***"]
			return render "/"
        end
        
       
            session[:user_id] = user.id
            redirect_to "/"
  end

  def logout
        session.clear
	    redirect_to "/"
  end
end
