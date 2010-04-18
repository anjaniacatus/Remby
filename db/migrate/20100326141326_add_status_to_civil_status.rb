class AddStatusToCivilStatus < ActiveRecord::Migration
  def self.up
    add_column :civil_statuses, :status, :string
  end

  def self.down
    remove_column :civil_statuses, :status
  end
end
