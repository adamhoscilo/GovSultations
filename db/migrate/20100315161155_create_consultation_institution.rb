class CreateConsultationInstitution < ActiveRecord::Migration
  def self.up
    add_column :consultations, :institution_id, :integer

    add_index :consultations, [:institution_id]
  end

  def self.down
    remove_column :consultations, :institution_id

    remove_index :consultations, :name => :index_consultations_on_institution_id rescue ActiveRecord::StatementInvalid
  end
end
