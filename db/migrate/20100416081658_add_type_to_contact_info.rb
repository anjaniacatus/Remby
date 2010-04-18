class AddTypeToContactInfo < ActiveRecord::Migration
  def self.up
    add_column :contact_infos, :type, :string
  end

  def self.down
    remove_column :contact_infos, :type
  end
end
