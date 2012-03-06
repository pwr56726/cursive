class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.string :fname
      t.string :lname
      t.date :birth_date
      t.date :death_date

      t.timestamps
    end
  end
end
