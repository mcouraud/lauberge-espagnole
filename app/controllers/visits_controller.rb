class VisitsController < ApplicationController

  def index
    @visits = Visit.select { |visit| visit.flat.user == current_user }
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @visit = Visit.new(visit_params)
    @visit.user = current_user
    @visit.flat = @flat
    if @visit.save
      @visit.save
      flash[:notice] = "Demande de visite envoyée"
      redirect_to flat_path(@flat)
    else
     render "flats/show"
    end
  end

  private

  def visit_params
    params.require(:visit).permit(:date, :time, :skype)
  end
end
