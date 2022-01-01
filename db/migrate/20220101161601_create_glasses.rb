class CreateGlasses < ActiveRecord::Migration[6.1]
  def change
    create_table :glasses do |t|
      t.string :sku, null: false
      t.string :name
      t.string :brand, null: false
      t.float :price, null: false
      t.string :color, null: false
      t.string :frame, null: false
      t.string :material, null: false
      t.string :measure, null: false
      t.boolean :sunglasses, default: false
      t.boolean :woman, default: true

      t.timestamps
    end
  end
end
