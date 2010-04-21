class AddValueDescriptionToPostalBox < ActiveRecord::Migration
  def self.up
    add_column :postal_boxes, :value, :string
    add_column :postal_boxes, :description, :text
  end

  def self.down
    remove_column :postal_boxes, :description
    remove_column :postal_boxes, :value
  end
end
