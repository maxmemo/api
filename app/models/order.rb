class Order < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :total, numericality: {greater_than_or_equal_to: 0}, presence: true
  has_many :placements
  has_many :products, through: :placements
end
