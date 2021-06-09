class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian],
                                                    message: "%<value>s is not a valid category, use chinese, italian,
                                                    japanese, french, belgian" }
end
