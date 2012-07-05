class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
      t.string :name
      t.integer :geoname_id

      t.column :lat, :float
      t.column :lng, :float
      t.integer :state_id

      t.timestamps
    end
  end

  def self.down
    drop_table :cities
  end
end
