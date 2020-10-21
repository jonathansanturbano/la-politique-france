ActiveAdmin.register Thematique do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :titre, :photo
  #
  # or
  #
  # permit_params do
  #   permitted = [:titre]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    column :titre
    actions
  end

  filter :titre

  form do |f|
    f.inputs 'Détails' do
      f.input :titre
      f.input :photo, as: :file, label: "Icon"
    end
    f.actions
  end

end
