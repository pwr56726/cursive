class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :desc
      t.boolean :active
      t.integer :set_up_year

      t.timestamps
    end
  end
end
