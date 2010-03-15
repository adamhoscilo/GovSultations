class TargetGroup < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    title :string, :required
    timestamps
  end
  
  has_many :consultation_target_groups
  has_many :consultations, :through => :consultation_target_groups, :accessible => true


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
