class CreateMembers < ActiveRecord::Migration
  
  def change
    create_table :members do |t|
      t.references :project
      t.references :musician

      t.timestamps
    end
  end
  
end
