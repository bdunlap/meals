class Grocery < ApplicationRecord
  belongs_to :shop, optional: true

  validates :name, presence: true
  validates :name, uniqueness: true

  def self.house_locations
    @house_locations ||= [
      "baking cupboard",
      "fridge",
      "basement"
    ]
  end
end
