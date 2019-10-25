class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.integer :mpg_min
      t.integer :price_max

      t.timestamps
    end
  end
end
