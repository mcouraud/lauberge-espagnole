class Visit < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  validates :date, presence: true
end
