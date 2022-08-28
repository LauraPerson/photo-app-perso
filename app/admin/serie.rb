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
      f.input :photos, input_html: { multiple: true }

    end
    f.actions
  end


  permit_params :name, :description, :photos
end