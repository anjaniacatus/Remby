class AddTypeToQualification < ActiveRecord::Migration
  def self.up
    add_column :qualifications, :type, :string
  end

  def self.down
    remove_column :qualifications, :type
  end
end
