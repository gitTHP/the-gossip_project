class AddRelations < ActiveRecord::Migration[5.2]
  def change
    add_reference :gossips, :user, foreign_key: true 
    add_reference :comments, :gossip, foreign_key: true 
    add_reference :private_messages, :user, foreign_key: true
  end
end
