ActiveAdmin.register Parti do

  permit_params :nom, :description, :photo,
                avis_thematiques_attributes: [:id, :opinion_majoritaire, :divergences, :liens, :thematique_id]

  index do
    selectable_column
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

    f.inputs "Avis Thématiques" do
      f.has_many :avis_thematiques, allow_destroy: true,
                                    heading: nil,
                                    new_record: true do |a|
        a.input :thematique_id, as: :select, collection: Thematique.all.map { |u| [u.titre, u.id] }, include_blank: false
        a.input :opinion_majoritaire
        a.input :divergences
        a.input :liens
      end
    end
    f.actions
  end

end
