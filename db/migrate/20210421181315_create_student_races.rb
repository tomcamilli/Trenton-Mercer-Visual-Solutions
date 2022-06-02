class CreateStudentRaces < ActiveRecord::Migration[6.0]
  def change
    create_table :student_races do |t|
      t.integer :district_code, null: false
      t.float :white
      t.float :hispanic
      t.float :black
      t.float :asian
      t.float :nativeHawaiian
      t.float :americanIndian
      t.float :mixed

      t.timestamps
    end
  end
end
