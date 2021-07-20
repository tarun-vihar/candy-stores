class AddCandiesCounterToShelves < ActiveRecord::Migration[6.1]
  def change
    add_column :shelves, :candies_counter, :integer
  end
end
