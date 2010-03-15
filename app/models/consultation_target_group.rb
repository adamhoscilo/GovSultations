class ConsultationTargetGroup < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    timestamps
  end
  belongs_to :consultation
  belongs_to :target_group

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
