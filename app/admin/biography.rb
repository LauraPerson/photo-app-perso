ActiveAdmin.register Biography do

  index do
    selectable_column
    column :content
    actions
  end

  form do |f|
    f.inputs "Bio" do
      f.input :content
    end
    f.actions
  end


  permit_params :content
end