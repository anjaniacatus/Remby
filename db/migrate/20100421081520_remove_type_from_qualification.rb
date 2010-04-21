class RemoveTypeFromQualification < ActiveRecord::Migration
  def self.up
    remove_column :qualifications, :type
  end

  def self.down
    add_column :qualifications, :type, :string
  end
end
