class UsersController < ApplicationController
  def index
    @flats = Flat.select { |flat| flat.user == current_user}
  end

  def show
    @user = current_user
  end
end
