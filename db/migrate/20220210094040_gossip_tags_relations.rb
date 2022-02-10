class GossipTagsRelations < ActiveRecord::Migration[5.2]
  def change 
    add_reference :tags_gossips, :tag, foreign_key: true 
    add_reference :tags_gossips, :gossip, foreign_key: true 
    add_reference :private_message_users, :user, foreign_key: true 
    add_reference :private_message_users, :private_messages, foreign_key: true
  end
end
