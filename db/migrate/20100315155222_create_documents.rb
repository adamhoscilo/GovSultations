class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.string   :title
      t.text     :description
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :documents
  end
end
