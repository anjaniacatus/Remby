class CreateDegreeCourses < ActiveRecord::Migration
  def self.up
    create_table :degree_courses do |t|
      t.integer :school_id
      t.string :degree_name
      t.integer :field_id
      t.text :description
      t.integer :cv_id
      t.date :start_on
      t.date :end_on

      t.timestamps
    end
  end

  def self.down
    drop_table :degree_courses
  end
end
