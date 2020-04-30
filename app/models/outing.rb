class Outing < ApplicationRecord
  belongs_to :dog
  belongs_to :stroll
  belongs_to :city
end
