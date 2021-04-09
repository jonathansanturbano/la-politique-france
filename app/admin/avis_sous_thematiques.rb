ActiveAdmin.register AvisSousThematique do

  permit_params :sous_thematique_id, :parti_id, :avis, :liens

  index do
    selectable_column
    column "Parti" do |t|
      t.parti.nom
    end
    column "Sous-Thématique" do |t|
      t.sous_thematique.titre
    end
    column :avis
    actions
  end

  form do |f|

    f.inputs 'Details' do
      f.input :sous_thematique_id, as: :select, collection: SousThematique.all.map { |u| [u.titre, u.id] }, include_blank: false
      f.input :parti_id, as: :select, collection: Parti.all.map { |u| [u.nom, u.id] }, include_blank: false
      li do
        label :avis
        f.rich_text_area :rich_avis
      end
      li do
        label :liens
        f.rich_text_area :rich_liens
      end
    end
    f.actions
  end

  filter :sous_thematique_id, as: :select, collection: SousThematique.all.map { |u| [u.titre, u.id] }
  filter :parti_id, as: :select, collection: Parti.all.map { |u| [u.nom, u.id] }
  filter :avis
  filter :created_at
  filter :updated_at
end
