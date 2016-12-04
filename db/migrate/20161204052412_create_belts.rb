class CreateBelts < ActiveRecord::Migration
  def change
    create_table :belts do |t|
      t.references :student, index: true, foreign_key: true
      t.references :belt_level, index: true, foreign_key: true
      t.date :start_date
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
