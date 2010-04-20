class CreateQualifications < ActiveRecord::Migration
  def self.up
    create_table :qualifications do |t|
      t.string :title
      t.text :description
      t.string :institute
      t.string :duration
      t.date :start_on
      t.date :end_on

      t.timestamps
    end
  end

  def self.down
    drop_table :qualifications
  end
end
