class AddAssociations < ActiveRecord::Migration[5.0]
  def change
    add_belongs_to :superheroes, :superpower
  end
end
