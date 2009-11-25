class CreateContactInformations < ActiveRecord::Migration
  def self.up
    create_table :contact_informations do |t|
      t.integer :contactable_id
      t.string :contactable_type
      t.integer :value_format
      t.string :value
      t.string :localisation

      t.timestamps
    end
  end

  def self.down
    drop_table :contact_informations
  end
end
