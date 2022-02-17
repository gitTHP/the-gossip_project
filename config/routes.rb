Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/',to: 'home_page#home' 
  get '/contact', to:'contact#contact' 
  get '/find_user/:user', to:'contact#find_user' 
  get '/find_gossip/:gossip', to:'home_page#find_gossip', as: 'find_gossip' 
  get '/find_author/:user', to:'home_page#find_author', as: 'find_author' 
  post '/user/login', to: 'session#create', as: 'signin_action' 
  get '/gossip/create', to: 'home_page#create_gossip_view'
  post '/gossip/create',to: 'home_page#create_gossip',as: 'create_gossip'
  get '/user/login',to:'session#createsessionview'
  post '/user/signup',to: 'home_page#signup', as: 'signup_action'
  get '/user/signup', to: 'home_page#signupview' 
  get '/user/signout', to:'session#logout' 
  post '/gossip/modify/:gossip',to:"home_page#edit_gossip",as: "edit_gossip"
  get '/gossip/modify/:gossip', to:"home_page#edit_gossip_view" 
  get '/gossip/delete/:gossip', to:"home_page#delete_gossip", as:"delete_gossip" 
  get '/gossip/like/:gossip',to:"home_page#like_gossip",as: "like_gossip"
 
end
