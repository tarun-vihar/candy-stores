class CreateCandies < ActiveRecord::Migration[6.1]
  def change
    create_table :candies do |t|
      t.string :candy_name
      t.string :flavour
      t.integer :price
      t.integer :shop_id
      t.integer :shelf_id

      t.timestamps
    end
  end
end
