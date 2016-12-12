class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.references :position_type, foreign_key: true
      t.references :user, foreign_key: true, null: true
      t.integer :pos_x
      t.integer :pos_y
      t.integer :width
      t.integer :height
      t.string :section_key
      t.integer :workspace_id
      t.datetime :deleted_at

      t.timestamp
    end
  end
end
