class CreateStreetAddresses < ActiveRecord::Migration
  def self.up
    create_table :street_addresses do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :street_addresses
  end
end
