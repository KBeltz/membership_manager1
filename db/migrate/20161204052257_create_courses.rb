class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :day
      t.time :start_time
      t.integer :duration
      t.string :name

      t.timestamps null: false
    end
  end
end
