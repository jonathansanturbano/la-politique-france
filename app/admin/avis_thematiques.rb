ActiveAdmin.register AvisThematique do

  index do
    selectable_column
    column "Parti" do |t|
      t.parti.nom
    end
    column "Thématique" do |t|
      t.thematique.titre
    end
    column :opinion_majoritaire
    column :divergences
    actions
  end

end
