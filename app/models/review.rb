class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: 0..5 }, numericality: true
  # validates :rating, numericality: { greater_than_or_equal_to: 0, less_than: 5 }
end
