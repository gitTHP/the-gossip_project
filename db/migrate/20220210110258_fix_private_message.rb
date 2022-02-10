class FixPrivateMessage < ActiveRecord::Migration[5.2]
  def change
    remove_reference :private_message_users, :private_messages, foreign_key: true
    add_reference :private_message_users, :private_message, foreign_key: true
  end
end
