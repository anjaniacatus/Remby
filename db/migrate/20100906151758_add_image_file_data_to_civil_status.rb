class AddImageFileDataToCivilStatus < ActiveRecord::Migration
  def self.up
    add_column :civil_statuses, :image_file_data, :binary
  end

  def self.down
    remove_column :civil_statuses, :image_file_data
  end
end
