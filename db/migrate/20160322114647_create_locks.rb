class CreateLocks < ActiveRecord::Migration
  def change
    create_table :locks do |t|
      t.integer :required_joins
      t.decimal :drop_to
      t.boolean :unlocked

      t.references :drop, index: true, foreign_key: true
    end
  end
end
