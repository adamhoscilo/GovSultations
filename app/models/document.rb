class Document < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    title       :string
    description :textile
    timestamps
  end
  
  belongs_to :source_for_consultation, :class_name => "Consultation", :foreign_key => "source_documents_id"
  belongs_to :result_of_consultation, :class_name => "Consultation", :foreign_key => "result_documents_id"
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
