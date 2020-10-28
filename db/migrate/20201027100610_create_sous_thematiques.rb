class CreateSousThematiques < ActiveRecord::Migration[6.0]
  def change
    create_table :sous_thematiques do |t|
      t.string :titre

      t.timestamps
    end
  end
end
