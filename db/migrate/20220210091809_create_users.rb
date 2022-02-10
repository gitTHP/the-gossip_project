class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

      t.string :firstname 
      t.string :lastname 
      t.string :description 
      t.string :email
      t.integer :age
    end
  end
end
