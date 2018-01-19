class Superhero < ApplicationRecord
  belongs_to :superpower
  validates :super_name, uniqueness: true
  accepts_nested_attributes_for :superpower

  def self.search(search)
    joins(:superpower)
    .where("superpowers.name LIKE ?", "%#{search}%")
  end
end
