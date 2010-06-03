class AddCompagnyIdToJob < ActiveRecord::Migration
  def self.up
    add_column :jobs, :compagny_id, :integer
  end

  def self.down
    remove_column :jobs, :compagny_id
  end
end
