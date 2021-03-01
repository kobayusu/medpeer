class Category < ApplicationRecord
  has_many :ideas
  validates :name,format: { with: /\A[ぁ-んァ-ン一-龥々]/, message: "is invalid. Input full-width characters." }, uniqueness: true
end
