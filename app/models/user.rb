class User < ApplicationRecord  
    has_secure_password
    has_many :gossips 
    belongs_to :city

end
