class RemoveCandiesCounterFromShelves < ActiveRecord::Migration[6.1]
  def change
    remove_column :shelves, :candies_counter, :integer
  end
end
