class Institution < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    title       :string, :required
    description :textile
    timestamps
  end
  
  has_many :consultations

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
