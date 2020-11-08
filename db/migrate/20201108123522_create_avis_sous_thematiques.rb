class CreateAvisSousThematiques < ActiveRecord::Migration[6.0]
  def change
    create_table :avis_sous_thematiques do |t|
      t.references :sous_thematique, null: false, foreign_key: true
      t.references :parti, null: false, foreign_key: true
      t.text :avis
      t.text :liens

      t.timestamps
    end
  end
end
