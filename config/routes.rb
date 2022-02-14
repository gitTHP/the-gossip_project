Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/',to: 'home_page#home' 
  get '/contact', to:'contact#contact' 
  get '/find_user/:user', to:'contact#find_user' 
  get '/find_gossip/:gossip', to:'home_page#find_gossip', as: 'find_gossip' 
  get '/find_author/:user', to:'home_page#find_author', as: 'find_author'
 
end
