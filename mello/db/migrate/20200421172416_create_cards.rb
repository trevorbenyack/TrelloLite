class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.text :body
      t.integer :priority
      t.date :due
      t.references :lane, null: false, foreign_key: true

      t.timestamps
    end
  end
end
