class User < ApplicationRecord
  validates :firstname, :lastname, :age, :email, :nationality, :situation, presence: true
  validates :email, :nickname, uniqueness: true
end
