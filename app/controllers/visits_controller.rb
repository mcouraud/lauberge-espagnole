class VisitsController < ApplicationController
  def create
    @flat = Flat.find(params[:flat_id])
    @visit = Visit.new(visit_params)
    @visit.save
    flash[:notice] = "Réservation réussie"
    redirect_to flat_path(@flat)
  end

  private

  def visit_params
    params.require(:visit).permit(:date, :time, :skype, :user_id, :flat_id)
  end
end
