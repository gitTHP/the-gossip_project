class HomePageController < ApplicationController
    def home 
        gossips=Gossip.all 

        if gossips
         
            @gossips=gossips
           

            
        else 
            @message="Bienvenue a la page des Potins!,il n'y a pas encore des potins ecrit"
        end
        
    end 

    def find_gossip 
        @gossip=Gossip.find(params[:gossip])
    end  

    def create_gossip_view 
        if session[:user_id]==nil 
            flash[:danger]="Utilisateur non connecté"
            redirect_to "/"
        end
    end

    def create_gossip 

        puts "GET PARAMS"
        puts params
        user=User.find(session[:user_id])
        Gossip.create(title:params[:title],content:params[:content],user:user)
        flash[:success]="Potin bien crée"
        redirect_to '/'
    end

    def find_author
        @user=User.find(params[:user])
    end 
    
    def signupview 
        @cities=City.all
    end

    def signup 
        
        city=City.find(params[:city])
        user=User.create(firstname:params[:firstname],lastname:params[:lastname],email:params[:email],password:params[:password],city:city,age:25,description:"this is the usres descripton profile");
        flash[:success] = "User bien crée! !"

        redirect_to '/' 
    end 

    def edit_gossip_view 
        @gossip=Gossip.find(params[:gossip])
    end 

    def edit_gossip 
        gossip=Gossip.find(params[:gossip]);
        puts "GET GOSSIP"
        puts gossip
        puts "GET PARAMS"
        puts params
        gossip.title=params[:title]
        gossip.content=params[:content] 
        gossip.save
        redirect_to '/'
    end
end
