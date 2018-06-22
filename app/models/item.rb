class Item < ApplicationRecord
  mount_uploader :image, ImageUploader
  serialize :image, JSON
  belongs_to :user, optional: true
  has_many :line_items
  validates :title, :price, presence: true
  validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed."}
  validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed."}
  validates :price, numericality: { only_integer: true }, length: { maximum: 7 }

  CONDITION = %w{ New Excellent Mint Used Fair Poor }

end
