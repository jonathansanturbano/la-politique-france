class CreateAvisThematiques < ActiveRecord::Migration[6.0]
  def change
    create_table :avis_thematiques do |t|
      t.references :parti, null: false, foreign_key: true
      t.references :thematique, null: false, foreign_key: true
      t.text :opinion_majoritaire
      t.text :divergences
      t.string :liens

      t.timestamps
    end
  end
end
