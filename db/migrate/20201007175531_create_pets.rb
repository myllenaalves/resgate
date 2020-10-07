class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.string :gender
      t.text :description
      t.string :avatar

      t.timestamps
    end
  end
end
