class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)
    if @registration.save
      flash[:notice] = "You are registered!"
      redirect_to registration_url(@registration, anchor: 'rsvp')
    else
      flash[:error] = "There was a problem..."
      render :new
    end
  end

  def show
    @registration = Registration.find(params[:id])
  end

  private

  def registration_params
    params.require(:registration).permit(
      :name,
      :email,
      :attending,
      :total_guests,
      :dietary_restrictions,
      :notes
    )
  end
end
