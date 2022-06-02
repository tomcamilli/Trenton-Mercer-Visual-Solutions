class CreateTowns < ActiveRecord::Migration[6.0]
  def change
    create_table :towns do |t|
      t.string :oriNumber, null: false, default: "NJ0000000"
      t.string :townName, null: false, default: " "
      t.integer :population
      t.integer :district_code

      t.timestamps
    end
  end
end
