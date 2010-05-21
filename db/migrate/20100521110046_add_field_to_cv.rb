class AddFieldToCv < ActiveRecord::Migration
  def self.up
    add_column :cvs, :field, :string
  end

  def self.down
    remove_column :cvs, :field
  end
end
