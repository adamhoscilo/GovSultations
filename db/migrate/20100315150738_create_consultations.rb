class CreateConsultations < ActiveRecord::Migration
  def self.up
    create_table :consultations do |t|
      t.string   :title
      t.datetime :start_date
      t.datetime :end_date
      t.text     :objective
      t.text     :result_description
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :consultations
  end
end
