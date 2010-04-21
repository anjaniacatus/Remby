class AddCategoryToQualification < ActiveRecord::Migration
  def self.up
    add_column :qualifications, :category, :string
  end

  def self.down
    remove_column :qualifications, :category
  end
end
