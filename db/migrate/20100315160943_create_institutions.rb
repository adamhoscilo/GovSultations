class CreateInstitutions < ActiveRecord::Migration
  def self.up
    create_table :institutions do |t|
      t.string   :title
      t.text     :description
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_column :consultations, :contact_id, :integer

    add_index :consultations, [:contact_id]
  end

  def self.down
    remove_column :consultations, :contact_id

    drop_table :institutions

    remove_index :consultations, :name => :index_consultations_on_contact_id rescue ActiveRecord::StatementInvalid
  end
end
