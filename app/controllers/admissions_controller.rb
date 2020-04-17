class AdmissionsController < ApplicationController
  before_action :authenticate_user!
  def new
    @admission = Admission.new
  end

  def create
    @admission = Admission.new(admission_params)
    @admission.user = current_user
    @admission.save if @admission.valid?
    redirect_to root_path
  end

  def index
    @admissions = Admission.where(user_id: current_user)
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
