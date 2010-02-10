class CreateJobSheets < ActiveRecord::Migration
  def self.up
    create_table :job_sheets do |t|
      t.string :position
      t.string :fields
      t.string :mission
      t.string :competence
      t.string :experience
      t.string :task
      t.string :degree

      t.timestamps
    end
  end

  def self.down
    drop_table :job_sheets
  end
end
