class CreateSchoolPopulation < ActiveRecord::Migration[6.0]
  def change
    create_table :school_populations do |t|
      t.integer :district_code, null: false
      t.integer :gradePK
      t.integer :gradeKG
      t.integer :grade01
      t.integer :grade02
      t.integer :grade03
      t.integer :grade04
      t.integer :grade05
      t.integer :grade06
      t.integer :grade07
      t.integer :grade08
      t.integer :grade09
      t.integer :grade10
      t.integer :grade11
      t.integer :grade12
      t.integer :total

      t.timestamps
    end
  end
end
