class AddCvIdToLanguage < ActiveRecord::Migration
  def self.up
    add_column :languages, :cv_id, :integer
  end

  def self.down
    remove_column :languages, :cv_id
  end
end
