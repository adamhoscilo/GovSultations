class Consultation < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    title              :string, :required
    start_date         :datetime
    end_date           :datetime, :required
    objective          :textile, :required
    result_description :textile
    timestamps
  end
  belongs_to :contact
    
  has_many :consultation_policy_fields
  has_many :policy_fields, :through => :consultation_policy_fields, :accessible => true
  
  has_many :consultation_target_groups
  has_many :target_groups, :through => :consultation_target_groups, :accessible => true

  has_many :source_documents, :class_name => "Document", :foreign_key => "source_documents_id"
  has_many :result_documents, :class_name => "Document", :foreign_key => "result_documents_id"
  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
