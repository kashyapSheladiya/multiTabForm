class RegistrationStepsController < ApplicationController
  include Wicked::Wizard

  steps :personal, :social

  def show
    @registration = current_registration
    render_wizard # renders the current step
  end

  def update
    @registration = current_registration
    @registration.attributes = registration_params
    render_wizard @registration
  end

  private
  def registration_params
    params.require(:registration).permit(:country, :address, :name, :dob, :bio, :fb, :twitter, :Insta)
  end

  # def redirect_to_finish_wizard
  #   redirect_to new_registration_path, notice: "Successfully form created."
  # end
end