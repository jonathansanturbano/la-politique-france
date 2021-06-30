ActiveAdmin.register Article do
  permit_params :titre, :resume, :contenu

  controller do
    defaults :finder => :find_by_slug
  end

  form do |f|

    f.inputs 'Détails' do
      f.input :titre
      f.input :resume
      f.rich_text_area :contenu
    end
    f.actions
  end

  index do
    selectable_column
    column :titre
    column :contenu
    column :created_at
    column :updated_at
    actions
  end

  filter :titre
  filter :contenu
  filter :created_at
  filter :updated_at
end
