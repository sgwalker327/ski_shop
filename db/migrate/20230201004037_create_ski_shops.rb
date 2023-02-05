class CreateSkiShops < ActiveRecord::Migration[5.2]
  def change
    create_table :ski_shops do |t|
      t.string :name
      t.integer :location_quantity
      t.boolean :rents_clothes

      t.timestamps
    end
  end
end
