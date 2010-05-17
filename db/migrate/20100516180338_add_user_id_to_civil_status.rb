class AddUserIdToCivilStatus < ActiveRecord::Migration
  def self.up
    add_column :civil_statuses, :user_id, :integer
  end

  def self.down
    remove_column :civil_statuses, :user_id
  end
end
