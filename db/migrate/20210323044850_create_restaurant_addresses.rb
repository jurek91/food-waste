class CreateRestaurantAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.integer :unit_number
      t.integer :street_number
      t.string :street_name
      t.string :council
      t.string :suburb
      t.integer :postcode
      t.string :state
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
