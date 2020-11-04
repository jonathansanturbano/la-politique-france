ActiveAdmin.register Personnalite do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :nom, :resume, :propositions, :poste, :lien, :parti_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:nom, :resume, :propositions, :parti_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    column "Parti" do |t|
      t.parti.nom
    end
    column :lien
    column :poste
    column :nom
    column :resume
    column :propositions
    actions
  end

  # filter :parti_id, as: :select, collection: Parti.all.map { |u| [u.nom, u.id] }, include_blank: false
  filter :nom
  filter :propositions

  form do |f|
    f.inputs do
      f.input :parti_id, as: :select, collection: Parti.all.map { |u| [u.nom, u.id] }, include_blank: false
      f.input :lien, as: :select, collection: ["Membre", "Affilié"], include_blank: false
      f.input :poste
      f.input :nom
      f.input :resume
      f.input :propositions
    end
    f.actions
  end

end
