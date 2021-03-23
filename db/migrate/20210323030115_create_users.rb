class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :location
      t.integer :age
      t.boolean :private_person

      t.timestamps
    end
  end
end