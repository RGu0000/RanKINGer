class Player < ApplicationRecord
  has_many :memberships
  has_many :leagues, through: :memberships
  has_many :matches
  has_many :leagues, through: :matches
end