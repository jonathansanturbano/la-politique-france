class ChangeLiensToBeTextInAvisThematiques < ActiveRecord::Migration[6.0]
  def change
    change_column :avis_thematiques, :liens, :text
  end
end
