class CreateConsultationDocuments < ActiveRecord::Migration
  def self.up
    add_column :documents, :consultation_id, :integer

    add_index :documents, [:consultation_id]
  end

  def self.down
    remove_column :documents, :consultation_id

    remove_index :documents, :name => :index_documents_on_consultation_id rescue ActiveRecord::StatementInvalid
  end
end
