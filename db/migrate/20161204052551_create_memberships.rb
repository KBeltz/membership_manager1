class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.references :student, index: true, foreign_key: true
      t.references :membership_type, index: true, foreign_key: true
      t.date :start_date
      t.integer :term

      t.timestamps null: false
    end
  end
end
