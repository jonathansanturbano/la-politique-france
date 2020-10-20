class CreatePartis < ActiveRecord::Migration[6.0]
  def change
    create_table :partis do |t|
      t.string :nom
      t.text :description

      t.timestamps
    end
  end
end
