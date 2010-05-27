class AddPhotoIdToCivilStatus < ActiveRecord::Migration
  def self.up
    add_column :civil_statuses, :photo_id, :integer
  end

  def self.down
    remove_column :civil_statuses, :photo_id
  end
end
