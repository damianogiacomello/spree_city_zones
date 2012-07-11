class AddCityToAddress < ActiveRecord::Migration
  def self.up
    change_column :spree_addresses, :city, :integer
    rename_column :spree_addresses, :city, :city_id
    add_column :spree_addresses, :city_name, :string, :after => :city_id
  end

  def self.down
    remove_column :spree_addresses, :city_name
    rename_column :spree_addresses, :city_id, :city
    change_column :spree_addresses, :city, :string
  end
end
