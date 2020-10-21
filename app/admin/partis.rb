ActiveAdmin.register Parti do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :nom, :description, :photo
  #
  # or
  #
  # permit_params do
  #   permitted = [:nom, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

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
    f.actions
  end

end
