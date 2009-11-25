class CreateExperiences < ActiveRecord::Migration
  def self.up
    create_table :experiences do |t|
      t.string :ref
      t.string :office_name
      t.text :description
      t.string :society_name
      t.string :period
      t.date :begin_at
      t.references :profile

      t.timestamps
    end
  end

  def self.down
    drop_table :experiences
  end
end
