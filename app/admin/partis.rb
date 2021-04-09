ActiveAdmin.register Parti do

  permit_params :nom, :rich_description, :photo,
                avis_thematiques_attributes: [:id, :rich_opinion_majoritaire, :rich_divergences, :rich_liens, :thematique_id, :_destroy],
                avis_sous_thematiques_attributes: [:id, :sous_thematique_id, :avis, :_destroy]

  index do
    selectable_column
    column :id
    column :nom
    column :description
    column :created_at
    column :updated_at
    actions
  end

  show do
    attributes_table_for parti do
      row :logo do
        cl_image_tag(parti.photo.key)
      end
      row :nom
      row :description do
        parti.rich_description.body
      end
    end
    active_admin_comments
  end

  filter :nom

  form do |f|

    f.inputs 'Details' do
      f.input :nom
      li do
        label :rich_description, class: 'trix-editor-label'
        f.rich_text_area :rich_description
      end
      f.input :photo, as: :file, label: "Logo"
    end

    tabs do
      tab 'Avis Thématiques' do
        f.inputs do
          f.has_many :avis_thematiques,
                                        heading: false,
                                        new_record: false do |a|
            # ul a.object.thematique.titre do
              # li do
              #   a.label :rich_opinion_majoritaire, class: 'trix-editor-label'
              #   a.rich_text_area :rich_opinion_majoritaire
              # end
              # li do
              #   a.label :rich_divergences, class: 'trix-editor-label'
              #   a.rich_text_area :rich_divergences
              # end
              # li do
              #   a.label :rich_liens, class: 'trix-editor-label'
              #   a.rich_text_area :rich_liens
              # end
            # end
              text_node a.object.the.html_safe
                li do
                  a.label :rich_opinion_majoritaire, class: "trix-editor-label"
                  a.rich_text_area :rich_opinion_majoritaire
                end
                text_node "&nbsp;".html_safe
                li do
                  a.label :rich_divergences, class: "trix-editor-label"
                  a.rich_text_area :rich_divergences
                end
                text_node "&nbsp;".html_safe
                li do
                  a.label :rich_liens, class: "trix-editor-label"
                  a.rich_text_area :rich_liens
                end
              text_node "&nbsp;".html_safe
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
