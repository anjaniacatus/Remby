class CreateCompagnies < ActiveRecord::Migration
  def self.up
    create_table :compagnies do |t|
      t.string :name
      t.string :headquarters
      t.integer :registration_number
      t.string :legal_form
      t.string :activity
      t.string :sector

      t.timestamps
    end
  end

  def self.down
    drop_table :compagnies
  end
end
