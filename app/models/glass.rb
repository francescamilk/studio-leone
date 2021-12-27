class Glass < ApplicationRecord
  validates :sku, uniqueness: { case_sensitive: false }
  validates :sku, :brand, :price, :color, :frame, :material, :measure, presence: true

  scope :sun, -> { where(sunglasses: true) }
  scope :sight, -> { where(sunglasses: false) }

  scope :new_arrive, -> { order(created_at: desc) }

  scope :price_high, -> { order(price: :desc) } 
  scope :price_low, -> { order(price: :asc) }
end
