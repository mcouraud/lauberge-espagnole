class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @flat = Flat.new
  end
end
