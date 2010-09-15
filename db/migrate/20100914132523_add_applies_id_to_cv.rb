class AddAppliesIdToCv < ActiveRecord::Migration
  def self.up
    add_column :cvs, :applies_id, :integer
  end

  def self.down
    remove_column :cvs, :applies_id
  end
end
