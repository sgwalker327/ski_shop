class CreateSkis < ActiveRecord::Migration[5.2]
  def change
    create_table :skis do |t|
      t.string :fleet
      t.string :manufacturer
      t.string :model
      t.integer :year
      t.integer :length
      t.integer :width
      t.boolean :needs_tuned
      t.belongs_to :ski_shop, foreign_key:true

      t.timestamps
    end
  end
end
