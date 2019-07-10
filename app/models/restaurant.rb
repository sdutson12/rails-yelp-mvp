class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATS = %w[chinese italian japanese french belgian].freeze

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: {
    in: Restaurant::CATS,
    message: 'not a valid category'
  }
end
