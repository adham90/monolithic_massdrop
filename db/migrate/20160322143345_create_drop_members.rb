class CreateDropMembers < ActiveRecord::Migration
  def change
    create_table :drop_members do |t|
      t.references :user, index: true, foreign_key: true
      t.references :drop, index: true, foreign_key: true
      t.integer :type, default: 0, null: false

      t.timestamps null: false
    end
  end
end
