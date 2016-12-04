class CreateLoginAttempts < ActiveRecord::Migration
  def change
    create_table :login_attempts do |t|
      t.string :ip_address
      t.boolean :is_successful
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
