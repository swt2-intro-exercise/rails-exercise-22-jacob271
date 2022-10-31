class Paper < ApplicationRecord
  validates :title, presence: true
  validates :year, numericality: { only_integer: true }
  validates :venue, presence: true
  has_and_belongs_to_many :authors
  scope :year, ->(year) { where("year = ?", year) if year.present?}
  end
