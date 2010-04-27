class RemoveTitleDescriptionFromComment < ActiveRecord::Migration
  def self.up
    remove_column :comments, :title
    remove_column :comments, :description
  end

  def self.down
    add_column :comments, :description, :text
    add_column :comments, :title, :string
  end
end
