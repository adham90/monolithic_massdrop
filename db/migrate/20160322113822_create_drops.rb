class CreateDrops < ActiveRecord::Migration
  def change
    create_table :drops do |t|
      t.references :product, index: true, foreign_key: true

      t.string :state
      t.text :description
      t.datetime :end_at

      t.timestamps null: false
    end
  end
end
