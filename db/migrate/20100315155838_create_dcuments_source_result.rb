class CreateDcumentsSourceResult < ActiveRecord::Migration
  def self.up
    rename_column :documents, :consultation_id, :source_documents_id
    add_column :documents, :result_documents_id, :integer

    remove_index :documents, :name => :index_documents_on_consultation_id rescue ActiveRecord::StatementInvalid
    add_index :documents, [:source_documents_id]
    add_index :documents, [:result_documents_id]
  end

  def self.down
    rename_column :documents, :source_documents_id, :consultation_id
    remove_column :documents, :result_documents_id

    remove_index :documents, :name => :index_documents_on_source_documents_id rescue ActiveRecord::StatementInvalid
    remove_index :documents, :name => :index_documents_on_result_documents_id rescue ActiveRecord::StatementInvalid
    add_index :documents, [:consultation_id]
  end
end
