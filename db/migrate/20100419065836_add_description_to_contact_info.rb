class AddDescriptionToContactInfo < ActiveRecord::Migration
  def self.up
    add_column :contact_infos, :description, :text
  end

  def self.down
    remove_column :contact_infos, :description
  end
end
