class ContactController < ApplicationController

    def contact 
        @users=User.all 

    end 

    def find_user
        @user=params[:user]

    end
end
