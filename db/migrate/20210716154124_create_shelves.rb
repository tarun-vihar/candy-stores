class CreateShelves < ActiveRecord::Migration[6.1]
  def change
    create_table :shelves do |t|
      t.string :shelf_name
      t.integer :shop_id

      t.timestamps
    end
  end
end
