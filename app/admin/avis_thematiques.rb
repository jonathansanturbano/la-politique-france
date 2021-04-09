ActiveAdmin.register AvisThematique do

  permit_params :rich_opinion_majoritaire, :rich_divergences, :rich_liens

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

  filter :parti_id, as: :select, collection: Parti.all.map { |u| [u.nom, u.id] }
  filter :thematique_id, as: :select, collection: Thematique.all.map { |u| [u.titre, u.id] }
  filter :opinion_majoritaire
  filter :divergences
  filter :created_at
  filter :updated_at

  form do |f|

    f.inputs 'Details' do
      li do
        label :opinion_majoritaire
        f.rich_text_area :rich_opinion_majoritaire
      end
      li do
        label :rich_divergences
        f.rich_text_area :rich_divergences
      end
      li do
        label :liens
        f.rich_text_area :rich_liens
      end
    end
    f.actions
  end
end
