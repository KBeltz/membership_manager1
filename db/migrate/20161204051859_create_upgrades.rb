class CreateUpgrades < ActiveRecord::Migration
  def change
    create_table :upgrades do |t|
      t.references :student, index: true, foreign_key: true
      t.string :type
      t.date :start_date
      t.integer :term

      t.timestamps null: false
    end
  end
end
