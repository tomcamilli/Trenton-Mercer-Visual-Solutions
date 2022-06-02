class CreateGraduationData < ActiveRecord::Migration[6.0]
  def change
    create_table :graduation_data do |t|
      t.integer :district_code, null: false
      t.float :class2019_4YR_School
      t.float :class2018_5YR_School
      t.float :class2018_4YR_School
      t.float :class2017_5YR_School

      t.timestamps
    end
  end
end
