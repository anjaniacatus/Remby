class AddAppliesIdToJob < ActiveRecord::Migration
  def self.up
    add_column :jobs, :applies_id, :integer
  end

  def self.down
    remove_column :jobs, :applies_id
  end
end
