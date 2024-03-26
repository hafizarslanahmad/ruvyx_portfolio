ActiveAdmin.register Enquiry do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :subject, :email, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :subject, :email, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :name, :subject, :email, :description

  index do
    selectable_column
    id_column
    column :name
    column :subject
    column :email
    column :description
    column :created_at
    actions
  end

  filter :name
  filter :subject
  filter :email
  filter :description
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :subject
      f.input :email
      f.input :description
    end
    f.actions
  end
  
end
