class Stroll < ApplicationRecord
  has_many :outings
  has_many :dogs through :outing
  belongs_to :dogsitter
  #belongs_to :city
end
