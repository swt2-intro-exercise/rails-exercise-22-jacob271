class Paper < ApplicationRecord
  validates :title, presence: true
  validates :year, numericality: { only_integer: true }
  validates :venue, presence: true
end
