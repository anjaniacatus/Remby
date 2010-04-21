class AddCivilStatusIdToCv < ActiveRecord::Migration
  def self.up
    add_column :cvs, :status_civil_id, :integer
  end

  def self.down
    remove_column :cvs, :status_civil_id
  end
end
