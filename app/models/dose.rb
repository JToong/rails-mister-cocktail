class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true 
  # uniqueness [:cocktail_id, :ingredient_id]
validates :ingredient, uniqueness: { scope: :cocktail,
    message: "Cannot have same ingredient twice" }
end
