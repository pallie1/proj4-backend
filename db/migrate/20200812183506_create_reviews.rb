class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :shop, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :img
      t.decimal :rate, precision: 4, scale: 2
      t.text :content

      t.timestamps
    end
  end
end
