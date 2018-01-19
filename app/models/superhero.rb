class Superhero < ApplicationRecord
  include ActiveModel::Validations
  belongs_to :superpower

  validates :name, presence: true
  validates :super_name, presence: true, uniqueness: true

  def power_name
    self.superpower.name
  end

end
