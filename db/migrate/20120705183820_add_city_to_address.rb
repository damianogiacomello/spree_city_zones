class AddCityToAddress < ActiveRecord::Migration
  def self.up
    change_column :addresses, :city, :integer
    rename_column :addresses, :city, :city_id
    add_column :addresses, :city_name, :string, :after => :city_id
  end

  def self.down
    rename_column :addresses, :city_id, :city
    change_column :addresses, :city, :string
    remove_column :addresses, :city_name
  end
end
