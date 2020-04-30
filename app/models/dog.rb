class Dog < ApplicationRecord
  # belongs_to :city
  has_many :outing
  has_many :strolls, dependent: :destroy
  has_many :strolls through :outing 
  has_many :dogsitters through :stroll
end
