class AddApplicationIdToCv < ActiveRecord::Migration
  def self.up
    add_column :cvs, :application_id, :integer
  end

  def self.down
    remove_column :cvs, :application_id
  end
end
