ActiveAdmin.register SousThematique do
  menu priority: 3
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :titre, :thematique_id, :photo
  #
  # or
  #
  # permit_params do
  #   permitted = [:titre, :thematique_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  controller do
    defaults :finder => :find_by_slug
  end

  index do
    selectable_column
    column "Thématique" do |t|
      t.thematique.titre
    end
    column "Sous-Thématique", :titre
    actions
  end

  filter :thematique_id, as: :select, collection: Thematique.all.map { |u| [u.titre, u.id] }, include_blank: false

  form do |f|
    f.inputs "Détails" do
      f.input :thematique_id, as: :select, collection: Thematique.all.map { |u| [u.titre, u.id] }, include_blank: false
      f.input :titre
      f.input :photo, as: :file, label: "Icon"
    end
    f.actions
  end
end
