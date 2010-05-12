class AddPublishedToCv < ActiveRecord::Migration
  def self.up
    add_column :cvs, :published, :boolean
  end

  def self.down
    remove_column :cvs, :published
  end
end
