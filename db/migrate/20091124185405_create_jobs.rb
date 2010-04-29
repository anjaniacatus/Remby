class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :ref
      t.text :description
      t.text :attribution
      t.text :profile
      t.text :folder
      t.datetime :dead_line
      t.references :society
      t.references :function
      t.references :localisation
      t.references :contract

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
