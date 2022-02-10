class PrivateMessage < ApplicationRecord 
    belongs_to :user 
    has_many :private_message_users 
    has_many :users, through: :private_message_users
end
