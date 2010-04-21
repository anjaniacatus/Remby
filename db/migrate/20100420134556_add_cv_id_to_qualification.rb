class AddCvIdToQualification < ActiveRecord::Migration
  def self.up
    add_column :qualifications, :cv_id, :integer
  end

  def self.down
    remove_column :qualifications, :cv_id
  end
end
