ActiveAdmin.register Thematique do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :titre,
                :photo,
                sous_thematiques_attributes: [:id, :titre, :photo]
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

  # EXAMPLE

  form do |f|
    f.inputs 'Details' do
      f.input :titre
      f.input :photo, as: :file, label: "Icon"
    end
    f.inputs "Sous-Thématiques" do
      f.has_many :sous_thematiques, allow_destroy: true,
                                    heading: nil,
                                    new_record: true do |a|
        a.input :titre
        a.input :photo, as: :file, label: "Icon"
      end
    end
    f.actions
  end
end