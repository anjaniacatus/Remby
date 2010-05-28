class AddFieldIdToDegreeCourse < ActiveRecord::Migration
  def self.up
    add_column :degree_courses, :field_id, :integer
  end

  def self.down
    remove_column :degree_courses, :field_id
  end
end
