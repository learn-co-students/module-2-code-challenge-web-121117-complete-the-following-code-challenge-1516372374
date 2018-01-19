class Superhero < ApplicationRecord
  belongs_to :superpower

  validates :super_name, uniqueness: true

  # def superpower_name=(name)
  #   superpower = Superpower.find_or_create_by(name: name)
  #   self.superpower superpower
  # end

  # def superpower_name
  #   self.superpower.name if self && self.superpower_id
  # end


end
