class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :zip, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.float :latitude, null: false
      t.float :longitude, null: false
      t.integer :timezone, null: false
      t.integer :dst, null: false
    end
  end
end
