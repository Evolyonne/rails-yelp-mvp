class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  validates_inclusion_of :category, :in => CATEGORY
  validates :name, :address, presence: true
end
