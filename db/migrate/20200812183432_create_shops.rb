class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :postalcode
      t.string :country

      t.timestamps
    end
  end
end
