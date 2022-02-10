class CreateLikeGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :like_gossips do |t|

      t.timestamps
    end
  end
end
