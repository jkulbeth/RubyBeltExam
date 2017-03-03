Rails.application.routes.draw do
    
root 'users#index'
post '/login' => 'users#login'
get '/users/:id' => 'users#show'
post '/users' => 'users#create'
get '/logout' => 'users#logout'
get '/songs/:id' => 'songs#show'
post '/songs' => 'songs#create'    
get '/songs' => 'songs#index'
post '/add' => 'songs#add'

    
end
