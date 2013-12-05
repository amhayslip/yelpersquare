class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :food_type
      t.integer :price
      t.string :image_url
      t.string :website
      t.string :hours

      t.timestamps
    end
  end
end
