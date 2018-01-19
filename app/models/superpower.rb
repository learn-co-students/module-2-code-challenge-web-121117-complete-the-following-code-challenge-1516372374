class Superpower < ApplicationRecord
  has_many :superheroes

  validates :name, uniqueness: true
end
