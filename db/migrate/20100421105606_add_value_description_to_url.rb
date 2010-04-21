class AddValueDescriptionToUrl < ActiveRecord::Migration
  def self.up
    add_column :urls, :value, :string
    add_column :urls, :description, :text
  end

  def self.down
    remove_column :urls, :description
    remove_column :urls, :value
  end
end
