class CreateDropMembers < ActiveRecord::Migration
  def change
    create_table :drop_members do |t|
      t.references :user, index: true, foreign_key: true
      t.references :drop, index: true, foreign_key: true
      t.boolean :type

      t.timestamps null: false
    end
  end
end
