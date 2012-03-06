class FixUpForeignKeysForAlbumModel < ActiveRecord::Migration
  def up
    change_table :albums do |t|
      t.remove :label_id, :project_id, :genre_id
      t.references :label, :project, :genre
    end
    # Klucze obce tabeli albums
    add_foreign_key :albums, :labels
    add_foreign_key :albums, :projects
    add_foreign_key :albums, :genres
  end

  def down
    remove_foreign_key :albums, :genres
    remove_foreign_key :albums, :projects
    remove_foreign_key :albums, :labels

    change_table :albums do |t|
      t.remove :label_id, :project_id, :genre_id
      t.integer :label_id, :project_id, :genre_id
    end
  end
end
