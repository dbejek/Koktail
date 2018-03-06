class CreateCoctails < ActiveRecord::Migration
  def change
    create_table :coctails do |t|
      t.string :ime
      t.text :sestavine
      t.text :opis

      t.timestamps null: false
    end
  end
end
