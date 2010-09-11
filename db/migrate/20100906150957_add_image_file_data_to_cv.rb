class AddImageFileDataToCv < ActiveRecord::Migration
  def self.up
    add_column :cvs, :image_file_data, :binary
  end

  def self.down
    remove_column :cvs, :image_file_data
  end
end
