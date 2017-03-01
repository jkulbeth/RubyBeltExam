Rails.application.routes.draw do
    
    root 'users#index'
    post '/users' => 'users#create'
    post '/login' => 'users#login'
   

    get '/logout' => 'users#logout'

 
  #get 'users/index'

  #get 'users/create'

  #get 'users/login'

  #get 'users/logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
