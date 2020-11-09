ActiveAdmin.register AvisSousThematique do

  index do
    selectable_column
    column "Parti" do |t|
      t.parti.nom
    end
    column "Thématique" do |t|
      t.sous_thematique.titre
    end
    column :avis
    actions
  end

end
