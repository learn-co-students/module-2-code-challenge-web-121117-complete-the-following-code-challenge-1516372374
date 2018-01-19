class Superhero < ApplicationRecord
  belongs_to :superpower

  validates :name, presence: true
  validates :super_name, presence: true, uniqueness: true


end
