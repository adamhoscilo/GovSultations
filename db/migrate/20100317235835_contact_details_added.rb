class ContactDetailsAdded < ActiveRecord::Migration
  def self.up
    add_column :contacts, :details, :text
  end

  def self.down
    remove_column :contacts, :details
  end
end
