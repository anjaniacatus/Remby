class CreateApplies < ActiveRecord::Migration
  def self.up
    create_table :applies do |t|
      t.integer :job_id
      t.integer :cv_id
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :applies
  end
end
