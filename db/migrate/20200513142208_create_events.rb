class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :description
      t.string :link
      t.datetime :date
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
