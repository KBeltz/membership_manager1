class CreateBeltLevels < ActiveRecord::Migration
  def change
    create_table :belt_levels do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
