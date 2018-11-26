class PagesController < ApplicationController
  def home
    @flat = Flat.new
  end
end
