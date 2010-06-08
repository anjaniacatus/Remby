class AddApplicationIdToJob < ActiveRecord::Migration
  def self.up
    add_column :jobs, :application_id, :integer
  end

  def self.down
    remove_column :jobs, :application_id
  end
end
