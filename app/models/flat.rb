class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :city, :address, :available_from, :flat_surface, :room_surface, :number_of_rooms, :number_of_roommates, :rent, :user_id, presence: :true
end
