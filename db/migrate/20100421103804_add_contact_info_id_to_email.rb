class AddContactInfoIdToEmail < ActiveRecord::Migration
  def self.up
    add_column :emails, :contact_info_id, :integer
  end

  def self.down
    remove_column :emails, :contact_info_id
  end
end
