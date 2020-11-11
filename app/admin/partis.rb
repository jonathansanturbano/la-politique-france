ActiveAdmin.register Parti do

  permit_params :nom, :description, :photo,
                avis_thematiques_attributes: [:id, :opinion_majoritaire, :divergences, :liens, :thematique_id],
                avis_sous_thematiques_attributes: [:id, :sous_thematique_id, :avis]

  index do
    selectable_column
    column :id
    column :nom
    column :description
    column :created_at
    column :updated_at
    actions
  end

  filter :nom

  form do |f|

    f.inputs 'Details' do
      f.input :nom
      f.input :description
      f.input :photo, as: :file, label: "Logo"
    end

    tabs do
      tab 'Avis Thématiques' do
        f.inputs do
          f.has_many :avis_thematiques, allow_destroy: true,
                                        heading: nil,
                                        new_record: false do |a|
            a.input :thematique_id,
                    as: :select, collection: Thematique.all.map { |u| [u.titre, u.id] }, include_blank: false
            a.input :opinion_majoritaire
            a.input :divergences
            a.input :liens
          end
        end
      end
      tab 'Avis Sous-Thématiques' do
        f.inputs do
          f.has_many :avis_sous_thematiques, heading: nil,
                                             new_record: false do |a|
            a.input :sous_thematique_id,
                    as: :select, collection: SousThematique.all.map { |u| ["#{u.thematique.titre.upcase} - #{u.titre}", u.id] }, include_blank: false, label: false
            a.input :avis
          end
        end
      end
    end
    f.actions
  end

end
