class AddOptionToDegreeCourse < ActiveRecord::Migration
  def self.up
    add_column :degree_courses, :option, :string
  end

  def self.down
    remove_column :degree_courses, :option
  end
end
