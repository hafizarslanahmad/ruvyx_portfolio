ActiveAdmin.register Project do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :title, :description, :category, images: []

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :category
    column :images
    column :created_at
    actions
  end

  filter :title
  filter :description
  filter :images
  filter :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :category, as: :select, collection: Project.categories.keys
      f.input :images, as: :file, input_html: { multiple: true }
    end
    f.actions
  end
  show do
    attributes_table do
      row :title
      row :description
      row :category
      row :images do
        div do
          project.images.each do |img|
            div do
              image_tag url_for(img), size: "200x200"
            end
          end
        end
      end
    end
  end
  
end
