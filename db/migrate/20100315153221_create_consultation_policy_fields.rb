class CreateConsultationPolicyFields < ActiveRecord::Migration
  def self.up
    create_table :consultation_policy_fields do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :consultation_id
      t.integer  :policy_field_id
    end
    add_index :consultation_policy_fields, [:consultation_id]
    add_index :consultation_policy_fields, [:policy_field_id]
  end

  def self.down
    drop_table :consultation_policy_fields
  end
end
