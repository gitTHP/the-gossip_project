class HomePageController < ApplicationController
    def home 
        @gossips=Gossip.all
    end 

    def find_gossip 
        @gossip=Gossip.find(params[:gossip])
    end 

    def find_author
        @user=User.find(params[:user])
    end
end
