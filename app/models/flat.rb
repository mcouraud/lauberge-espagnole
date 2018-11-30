class Flat < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  mount_uploader :photo2, PhotoUploader
  mount_uploader :photo3, PhotoUploader
  belongs_to :user
  validates :city, :address, :available_from, :flat_surface, :room_surface, :number_of_rooms, :number_of_roommates, :rent, :user_id, :photo, presence: true
  has_many :visits
  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_full_address?
  before_validation :set_full_address

  def set_full_address
    # binding.pry
    self.full_address = "#{self.address}, #{self.city}"
  end
end

# Flat.new(city: "Paris",address: "3 rue république", available_from: Date.new(2018,12,13), flat_surface: 20, room_surface: 10, number_of_rooms: 2, number_of_roommates: 2, rent: 359, user_id: 1, description: "sdkjdqkx").save
