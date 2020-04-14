class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)
    if @registration.save
      session[:reg_id] = @registration.id
      redirect_to registration_steps_path # this will redirect to first step of the wizard form.
    else
      render 'new'
    end
  end

  private

  def registration_params
    params.require(:registration).permit(:country, :address, :name, :dob, :bio, :fb, :twitter, :Insta)
  end
end