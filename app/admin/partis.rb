ActiveAdmin.register Parti do
  menu priority: 1
  config.batch_actions = false
  permit_params :nom, :rich_description, :photo,
                avis_thematiques_attributes: [:id, :rich_opinion_majoritaire, :rich_divergences, :rich_liens, :thematique_id, :_destroy],
                avis_sous_thematiques_attributes: [:id, :sous_thematique_id, :rich_avis, :_destroy]

  controller do
    defaults :finder => :find_by_slug
  end

  index do
    selectable_column
    column :nom
    column "Description" do |t|
      t.rich_description.body
    end
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
        ul class: "admin-categories" do
          Thematique.all.order(:titre).each do |thematique|
            li do
              button thematique.titre
            end
          end
        end
        f.inputs do
          div class: "admin-categories-thematique" do
            f.has_many :avis_thematiques,
                                          heading: false,
                                          allow_destroy: false,
                                          new_record: false do |a|
              div class: "admin-categorie-thematique", 'data-category': a.object.thematique.titre do

                li "Opinion Majoritaire", class: "titre-input-avis-thematique"
                li do
                  a.label :rich_opinion_majoritaire, class: 'trix-editor-label'
                  a.rich_text_area :rich_opinion_majoritaire
                end

                li "Divergences", class: "titre-input-avis-thematique"
                li do
                  a.label :rich_divergences, class: 'trix-editor-label'
                  a.rich_text_area :rich_divergences
                end

                li "Liens", class: "titre-input-avis-thematique"
                li do
                  a.label :rich_liens, class: 'trix-editor-label'
                  a.rich_text_area :rich_liens
                end
              end
            end
          end
        end
      end
      tab 'Avis Sous-Thématiques' do
        ul class: "admin-categories" do
          Thematique.all.order(:titre).each do |thematique|
            li do
              button thematique.titre
            end
          end
        end
        f.inputs do
          f.has_many :avis_sous_thematiques, heading: false,
                                             allow_destroy: false,
                                             new_record: false do |a|
            div class: "admin-categorie-thematique", 'data-category': a.object.sous_thematique.thematique.titre do
              li a.object.sous_thematique.titre, class: "titre-input-avis-thematique"
              li do
                a.label :rich_avis, class: 'trix-editor-label'
                a.rich_text_area :rich_avis
              end
            end
          end
        end
      end
    end
    f.actions
  end

end
