class CreateConsultationTargetGroups < ActiveRecord::Migration
  def self.up
    create_table :consultation_target_groups do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :consultation_target_groups
  end
end
