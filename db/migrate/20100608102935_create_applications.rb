class CreateApplications < ActiveRecord::Migration
  def self.up
    create_table :applications do |t|
      t.integer :job_id
      t.integer :cv_id
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :applications
  end
end
