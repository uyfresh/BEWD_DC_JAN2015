Rails.application.routes.draw do

get '/instagrams' => 'instagrams#index'
get 'instagrams/new' => 'instagrams#new'
post '/instagrams' => 'instagrams#create'
end
end
