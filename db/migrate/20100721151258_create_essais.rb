class CreateEssais < ActiveRecord::Migration
  def self.up
    create_table :essais do |t|
      t.string :essai_name
      t.text :desc

      t.timestamps
    end
  end

  def self.down
    drop_table :essais
  end
end
