class CreateEducationInfos < ActiveRecord::Migration
  def self.up
    create_table :education_infos do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :education_infos
  end
end
