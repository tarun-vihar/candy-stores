class AddCandiesCountToShelves < ActiveRecord::Migration[6.1]
  def change
    add_column :shelves, :candies_count, :integer
  end
end
