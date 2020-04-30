class Stroll < ApplicationRecord
  has_many :outings
  has_many :dogs, through: :outings
  belongs_to :dogsitter
  belongs_to :city
end
