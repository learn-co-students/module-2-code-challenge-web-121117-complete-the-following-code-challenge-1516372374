class CreateSuperheroes < ActiveRecord::Migration[5.0]
  def change
    create_table :superheroes do |t|
      t.string :name
      t.string :super_name
      t.references :superpower

      t.timestamps
    end
  end
end
