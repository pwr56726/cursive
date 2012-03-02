class CreateTestUsers < ActiveRecord::Migration
  def change
    create_table :test_users do |t|
      t.integer :testcolumn

      t.timestamps
    end
  end
end
