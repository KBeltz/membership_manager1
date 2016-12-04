class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :student, index: true, foreign_key: true
      t.string :type
      t.date :date

      t.timestamps null: false
    end
  end
end
