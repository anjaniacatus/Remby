class AddDurationToExperience < ActiveRecord::Migration
  def self.up
    add_column :experiences, :duration, :string
  end

  def self.down
    remove_column :experiences, :duration
  end
end
