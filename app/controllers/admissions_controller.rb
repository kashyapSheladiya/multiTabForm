class AdmissionsController < ApplicationController
  def new
    @admission = Admission.new
  end

  def create
    render json: params
    return
  end
  
  
end
