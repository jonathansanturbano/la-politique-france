class CreateThematiques < ActiveRecord::Migration[6.0]
  def change
    create_table :thematiques do |t|
      t.string :titre

      t.timestamps
    end
  end
end
