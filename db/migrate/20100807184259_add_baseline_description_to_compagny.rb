class AddBaselineDescriptionToCompagny < ActiveRecord::Migration
  def self.up
    add_column :compagnies, :baseline, :string
    add_column :compagnies, :description, :text
  end

  def self.down
    remove_column :compagnies, :description
    remove_column :compagnies, :baseline
  end
end
