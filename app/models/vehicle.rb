class Vehicle < ApplicationRecord
  belongs_to :brand
  belongs_to :model

  validates :value, :yearModel, :fuel, presence: true
end
