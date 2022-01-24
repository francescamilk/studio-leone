class Glass < ApplicationRecord
  validates :sku, uniqueness: { case_sensitive: false }
  validates :sku, :brand, :price, :color, :frame, :material, :measure, presence: true

  has_many_attached :photos

  scope :sun, -> { where(sunglasses: true) }
  scope :sight, -> { where(sunglasses: false) }

  scope :women, -> { where(woman: true)}
  scope :men, -> { where(woman: false)}

  scope :new_arrived, -> { order(created_at: desc) }

  scope :price_by_high, -> { order(price: :desc) } 
  scope :price_by_low, -> { order(price: :asc) }

  scope :armani, -> { where(brand: 'Armani') }
  scope :miu_miu, -> { where(brand: 'Miu Miu') }
  scope :vogue, -> { where(brand: 'Vogue') }
end
