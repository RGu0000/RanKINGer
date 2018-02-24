class League < ApplicationRecord
  has_many :memberships
  has_many :players, through: :memberships
  has_many :matches
  has_many :players, through: :matches
end