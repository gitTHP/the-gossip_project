class ContactController < ApplicationController

    def contact 
        
        @users=User.all 
        puts "GET USERS"
        puts @users.length

    end 

    def find_user
        @user=params[:user]

    end
end
