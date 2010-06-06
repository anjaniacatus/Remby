class AddCompagnyNameToExperience < ActiveRecord::Migration
  def self.up
    add_column :experiences, :compagny_name, :string
  end

  def self.down
    remove_column :experiences, :compagny_name
  end
end
