class AddValueDescriptionToStreetAddress < ActiveRecord::Migration
  def self.up
    add_column :street_addresses, :value, :string
    add_column :street_addresses, :description, :text
  end

  def self.down
    remove_column :street_addresses, :description
    remove_column :street_addresses, :value
  end
end
