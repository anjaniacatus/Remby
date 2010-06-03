class AddUserIdToCompagny < ActiveRecord::Migration
  def self.up
    add_column :compagnies, :user_id, :integer
  end

  def self.down
    remove_column :compagnies, :user_id
  end
end
