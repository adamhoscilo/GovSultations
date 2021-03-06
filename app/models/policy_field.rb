class PolicyField < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    title :string, :required
    timestamps
  end
  
  has_many :consultation_policy_fields
  
  has_many :consultations, :through => :consultation_policy_fields, :accessible => true
  


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
