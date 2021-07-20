class AddShelvesCountToShops < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :shelves_count, :integer
  end
end
