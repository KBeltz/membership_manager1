class DropLoginAttempts < ActiveRecord::Migration
  def change
    drop_table :login_attempts
  end
end
