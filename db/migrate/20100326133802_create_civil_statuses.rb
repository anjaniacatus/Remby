class CreateCivilStatuses < ActiveRecord::Migration
  def self.up
    create_table :civil_statuses do |t|
      t.string :family_name
      t.string :name
      t.integer :age
      t.date :birthday
      t.string :hometown
      t.string :current_city
      t.string :gender

      t.timestamps
    end
  end

  def self.down
    drop_table :civil_statuses
  end
end
