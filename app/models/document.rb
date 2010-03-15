class Document < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    title       :string
    description :textile
    timestamps
  end
  
  belongs_to :consultation


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
