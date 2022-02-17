class SessionController < ApplicationController 
    def create 
          email=params[:email]
          user=User.find_by(email:email) 

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            # redirige où tu veux, avec un flash ou pas
            redirect_to '/'
        
          else
            flash.now[:danger] = 'Invalid email/password combination'
            
          end
       
    end 

    def logout
        session.delete(:user_id)
        redirect_to '/'
    end
end
