class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.string :country
      t.string :city
      t.integer :price
      t.integer :ski_distance
      t.integer :ocean_distance
      t.integer :airport_distance
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
