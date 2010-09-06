class AddImageFileDataToCompagny < ActiveRecord::Migration
  def self.up
    add_column :compagnies, :image_file_data, :binary
  end

  def self.down
    remove_column :compagnies, :image_file_data
  end
end
