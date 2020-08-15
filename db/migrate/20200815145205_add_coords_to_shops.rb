class AddCoordsToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :coords, :string
  end
end
