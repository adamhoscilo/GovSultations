class CreateTargetGroups < ActiveRecord::Migration
  def self.up
    create_table :target_groups do |t|
      t.string   :title
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :target_groups
  end
end
