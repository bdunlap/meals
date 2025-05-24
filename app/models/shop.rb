class Shop < ApplicationRecord
  has_many :groceries

  validates :name, presence: true
  validates :name, uniqueness: true

  def self.locations
    @locations ||= [
      "produce",
      "meat",
      "canned/jarred"
    ]
  end
end
