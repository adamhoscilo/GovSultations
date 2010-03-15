class ConsultationTargetGroupAddedIndex < ActiveRecord::Migration
  def self.up
    add_column :consultation_target_groups, :consultation_id, :integer
    add_column :consultation_target_groups, :target_group_id, :integer

    add_index :consultation_target_groups, [:consultation_id]
    add_index :consultation_target_groups, [:target_group_id]
  end

  def self.down
    remove_column :consultation_target_groups, :consultation_id
    remove_column :consultation_target_groups, :target_group_id

    remove_index :consultation_target_groups, :name => :index_consultation_target_groups_on_consultation_id rescue ActiveRecord::StatementInvalid
    remove_index :consultation_target_groups, :name => :index_consultation_target_groups_on_target_group_id rescue ActiveRecord::StatementInvalid
  end
end
