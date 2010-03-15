class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string   :title
      t.string   :email
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :contacts
  end
end
