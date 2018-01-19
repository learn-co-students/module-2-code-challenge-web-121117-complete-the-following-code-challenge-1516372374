class Superhero < ApplicationRecord
  belongs_to :superpower, dependent: :destroy
  
  validates :super_name, uniqueness: true

end
