ActiveAdmin.register Personnalite do
  menu priority: 5
  config.batch_actions = false
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :nom, :rich_resume, :rich_propositions, :poste, :lien, :parti_id
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
    column :nom
    column "Parti" do |t|
      t.parti.nom
    end
    column :poste
    column "Resume" do |t|
      t.rich_resume.body
    end
    column "Propositions" do |t|
      t.rich_propositions.body
    end
    column :lien
    actions
  end

  filter :parti_id, as: :select, collection: Parti.all.map { |u| [u.nom, u.id] }, include_blank: false
  filter :nom
  filter :propositions

  form do |f|
    f.inputs do
      f.input :parti_id, as: :select, collection: Parti.all.map { |u| [u.nom, u.id] }, include_blank: false
      f.input :lien, as: :select, collection: ["Membre", "Affilié"], include_blank: false
      f.input :poste
      f.input :nom

      li do
        f.label :rich_resume, class: 'trix-editor-label'
        f.rich_text_area :rich_resume
      end

      li do
        f.label :rich_propositions, class: 'trix-editor-label'
        f.rich_text_area :rich_propositions
      end
    end
    f.actions
  end

end
