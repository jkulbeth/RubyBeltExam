class UsersController < ApplicationController
    def index
        
	end

def create
        user = User.new (params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation))
        
      if user.save
         session[:user_id] = user.id
         redirect_to "/songs"
            
      else
         flash[:errors] = user.errors.full_messages
         redirect_to "/"
      end
	end

def login
       user = User.find_by(:email => params[:user][:email])
       if user && user.authenticate(params[:user][:password])
         session[:user_id] = user.id 
         redirect_to '/songs'
       else
         flash[:errors] = ["*** email/password invalid ***"]
         redirect_to "/"
       end
		
end

def logout
	session.clear
	redirect_to "/"
end

def show
	@user = User.find(params[:id])
	@songs = @user.plus_songs
  
    
end

private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password)
	end
end
