 class CreateQualifications < ActiveRecord::Migration
  def self.up
    create_table :qualifications do |t|
      t.string :qualifiable_type
      t.integer :qualifiable_id
      t.string :title
      t.text :description
      t.string :duration
      t.string :location
      t.date :start_at
      t.date :end_at

      t.timestamps
    end
    
end

  def self.down
    drop_table :qualifications
  end
end

