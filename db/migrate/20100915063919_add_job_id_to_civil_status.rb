class AddJobIdToCivilStatus < ActiveRecord::Migration
  def self.up
    add_column :civil_statuses, :job_id, :integer
  end

  def self.down
    remove_column :civil_statuses, :job_id
  end
end
