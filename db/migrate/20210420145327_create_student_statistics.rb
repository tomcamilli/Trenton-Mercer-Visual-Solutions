class CreateStudentStatistics < ActiveRecord::Migration[6.0]
  def change
    create_table :student_statistics do |t|
      t.integer :district_code, null: false
      t.float :female
      t.float :male
      t.float :economicDis
      t.float :studentsWithDis
      t.float :englishLearners
      t.float :homeless
      t.float :foster
      t.float :militaryConnectedStudent
      t.float :migrantStudents

      t.timestamps
    end
  end
end
