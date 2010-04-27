class AddBodyToComment < ActiveRecord::Migration
  def self.up
    add_column :comments, :body, :text
  end

  def self.down
    remove_column :comments, :body
  end
end
