class CreateCrime < ActiveRecord::Migration[6.0]
  def change
    create_table :crimes do |t|
      t.string :oriNumber, null: false, default: "NJ0000000"
      t.string :agency
      t.integer :population
      t.string :typeOfOffense
      t.integer :murder
      t.integer :rape
      t.integer :robbery
      t.integer :assault
      t.integer :burglary
      t.integer :larceny
      t.integer :autoTheft
      t.integer :total

      t.timestamps
    end
  end
end
