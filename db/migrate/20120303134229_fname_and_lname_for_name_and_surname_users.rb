class FnameAndLnameForNameAndSurnameUsers < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.rename :name, :fname
      t.rename :surname, :lname
    end
  end

  def down
    change_table :users do |t|
      t.rename :lname, :surname
      t.rename :fname, :name
    end
  end
end
