class DocumentsController < ApplicationController

  hobo_model_controller

  auto_actions :all
  auto_actions_for :source_for_consultation, [:index]
  auto_actions_for :result_of_consultation, [:index]

end
