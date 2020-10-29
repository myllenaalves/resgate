class CreateLocalizations < ActiveRecord::Migration[6.0]
  def change
    create_table :localizations do |t|
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
