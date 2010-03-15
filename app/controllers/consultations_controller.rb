class ConsultationsController < ApplicationController

  hobo_model_controller

  auto_actions :all
  
  index_action :inactive
  
  def index
    hobo_index(model.active)
  end
  
  def inactive
    hobo_index(model.inactive)
  end

end