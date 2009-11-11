class AddFirmToOffering < ActiveRecord::Migration
  def self.up
    add_column :offerings, :firm_id, :integer
  end

  def self.down
    remove_column :offerings, :firm_id, :integer
  end
end
