class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @flats = Flat.where.not(latitude: nil, longitude: nil).where('city LIKE ?', params[:city])

    @markers = @flats.map do |flat|
      {
        lng: flat.longitude,
        lat: flat.latitude,
        infoWindow: { content: render_to_string(partial: "/flats/map_window", locals: { flat: flat }) }
      }
    end
  end

  def show
    set_flat
    @user = current_user
    @visit = Visit.new
  end

  def new
    @flat = Flat.new
    @flat.user = current_user
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
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
    params.require(:flat).permit(:city, :address, :available_from, :flat_surface, :room_surface, :number_of_rooms, :number_of_roommates, :description, :rent, :user_id, :photo, :photo2, :photo3)
  end
end
