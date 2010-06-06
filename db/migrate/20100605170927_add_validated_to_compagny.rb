class AddValidatedToCompagny < ActiveRecord::Migration
  def self.up
    add_column :compagnies, :validated, :boolean
  end

  def self.down
    remove_column :compagnies, :validated
  end
end
