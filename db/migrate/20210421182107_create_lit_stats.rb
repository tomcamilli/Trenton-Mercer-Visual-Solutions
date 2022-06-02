class CreateLitStats < ActiveRecord::Migration[6.0]
  def change
    create_table :lit_stats do |t|
      t.integer :district_code, null: false
      t.integer :validScores
      t.float :participationPercentage
      t.float :districtPerformance
      t.float :profRate
      t.float :annualTarget

      t.timestamps
    end
  end
end
