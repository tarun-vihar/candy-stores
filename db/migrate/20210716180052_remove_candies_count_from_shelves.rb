class RemoveCandiesCountFromShelves < ActiveRecord::Migration[6.1]
  def change
    remove_column :shelves, :candies_count, :integer
  end
end
