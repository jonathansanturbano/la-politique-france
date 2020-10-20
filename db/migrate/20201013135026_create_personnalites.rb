class CreatePersonnalites < ActiveRecord::Migration[6.0]
  def change
    create_table :personnalites do |t|
      t.string :nom
      t.text :resume
      t.text :propositions
      t.references :parti, null: false, foreign_key: true

      t.timestamps
    end
  end
end
