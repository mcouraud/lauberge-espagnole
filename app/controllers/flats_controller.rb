class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @flats = Flat.where('city LIKE ?', params[:city])
  end

  def show
    set_flat
    @visit = Visit.new
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      @flat.save
      redirect_to @flat
    else
      render :new
    end
  end

  def edit
    set_flat
  end

  def update
    set_flat
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    set_flat
    @flat.destroy
    redirect_to controller: "flats", city: @flat.city
  end



  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:city, :address, :available_from, :flat_surface, :room_surface, :number_of_rooms, :number_of_roommates, :description,  :rent, :user_id, :photo)
  end
end
