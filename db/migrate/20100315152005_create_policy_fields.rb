class CreatePolicyFields < ActiveRecord::Migration
  def self.up
    create_table :policy_fields do |t|
      t.string   :title
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :policy_fields
  end
end
