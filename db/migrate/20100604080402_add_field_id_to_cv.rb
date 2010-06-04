class AddFieldIdToCv < ActiveRecord::Migration
  def self.up
    add_column :cvs, :field_id, :integer
  end

  def self.down
    remove_column :cvs, :field_id
  end
end
