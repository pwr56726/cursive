class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :label_id
      t.integer :project_id
      t.integer :genre_id
      t.string :title
      t.string :comment

      t.timestamps
    end
  end
end
