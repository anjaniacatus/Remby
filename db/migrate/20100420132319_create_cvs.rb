class CreateCvs < ActiveRecord::Migration
  def self.up
    create_table :cvs do |t|
      t.string :title
      t.text :summary
      t.integer :civil_status_id, :defaults => 1
  
      t.timestamps
    end
  end

  def self.down
    drop_table :cvs
  end
end
