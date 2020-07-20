class CreateLabellings < ActiveRecord::Migration[6.0]
  def change
    create_table :labellings do |t|
      t.references :label, null: false, foreign_key: true
      t.references :glossary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
