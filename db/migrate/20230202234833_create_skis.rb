class CreateSkis < ActiveRecord::Migration[5.2]
  def change
    create_table :skis do |t|
      t.integer :ski_shop_id
      t.string :fleet
      t.string :manufacturer
      t.string :model
      t.integer :year
      t.integer :length
      t.integer :width
      t.boolean :needs_tuned

      t.timestamps
    end
  end
end
