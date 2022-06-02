class CreateDistrict < ActiveRecord::Migration[6.0]
  def change
    create_table :districts do |t|
      t.integer :district_code, default: "0000"
      t.string :district_name, null: false

      t.timestamps
    end
  end
end
