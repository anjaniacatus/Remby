class AddValueDescriptionToPhoneNumber < ActiveRecord::Migration
  def self.up
    add_column :phone_numbers, :value, :string
    add_column :phone_numbers, :description, :text
  end

  def self.down
    remove_column :phone_numbers, :description
    remove_column :phone_numbers, :value
  end
end
