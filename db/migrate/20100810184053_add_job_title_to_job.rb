class AddJobTitleToJob < ActiveRecord::Migration
  def self.up
    add_column :jobs, :job_title, :string
  end

  def self.down
    remove_column :jobs, :job_title
  end
end
