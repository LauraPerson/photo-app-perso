ActiveAdmin.register Serie do

  index do
    selectable_column
    column :name
    column :description
    actions
  end

  form do |f|
    f.inputs "New Serie" do
      f.input :name
      f.input :description
      f.input :main_image, as: :file

    end
    f.actions
  end


  permit_params :name, :description, :main_image
end