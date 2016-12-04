class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :student_number
      t.references :account_type, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.date :birthdate

      t.timestamps null: false
    end
  end
end
