class CreateKeyLocations < ActiveRecord::Migration
  def change
    create_table :key_locations do |t|
      t.integer :key_id
      t.integer :location_id

      t.timestamps
    end
  end
end
