class CreateCvs < ActiveRecord::Migration
  def self.up
    create_table :cvs do |t|
      t.string :title
      t.text :summary

      t.timestamps
    end
  end

  def self.down
    drop_table :cvs
  end
end
