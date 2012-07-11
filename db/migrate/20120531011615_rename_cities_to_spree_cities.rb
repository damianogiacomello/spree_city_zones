class RenameCitiesToSpreeCities < ActiveRecord::Migration
  def up
    rename_table :cities, :spree_cities
  end
  
  def down
    rename_table :spree_cities, :cities
  end
end
