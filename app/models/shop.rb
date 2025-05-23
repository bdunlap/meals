class Shop < ApplicationRecord
  has_many :groceries

  validates :name, presence: true
  validates :name, uniqueness: true
end
