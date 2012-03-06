class FixForeignKeysMembers < ActiveRecord::Migration
  def up
    add_foreign_key :members, :projects
    add_foreign_key :members, :musicians
  end

  def down
    remove_foreign_key :members, :musicians
    remove_foreign_key :members, :projects
  end
end
