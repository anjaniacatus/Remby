class CreateDomains < ActiveRecord::Migration
  def self.up
    create_table :domains do |t|
      t.string :ref
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :domains
  end
end
