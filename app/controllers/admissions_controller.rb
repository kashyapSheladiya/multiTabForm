class AdmissionsController < ApplicationController
  def new
    @admission = Admission.new
  end

  def create
    @admission = Admission.new(admission_params)
    @admission.save if @admission.valid?
    redirect_to new_admission_path
  end

  def index
    @admissions = Admission.all
  end

  def edit
    @admission = Admission.find(params[:id])
  end

  def update
    @admission = Admission.find(params[:id])
    if @admission.update(admission_params)
      redirect_to @admission
    else
      render 'edit'
    end
  end

  def show
    @admission = Admission.find(params[:id])
  end

  private

  def admission_params
    params.require(:admission).permit(:name, :dob, :gender, :email, :country, :address,
      :dadname, :momname, :dadoccupation, :momoccupation,
      :secmarks, :highsecmarks, :media_1, :media_2, :media_3)
  end  
end
