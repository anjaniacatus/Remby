class RemoveTypeDescriptionFromContactInfo < ActiveRecord::Migration
  def self.up
    remove_column :contact_infos, :type
    remove_column :contact_infos, :description
  end

  def self.down
    add_column :contact_infos, :description, :text
    add_column :contact_infos, :type, :string
  end
end
