ActiveAdmin.register Image do
  index do
    selectable_column
    column :name
    column :description
    actions
  end

  form do |f|
    f.inputs "New Image" do
      f.input :name
      f.input :description
      f.input :technique
      f.input :location
      f.input :date
      f.input :camera
      f.input :serie_id, as: :select, collection: Serie.all
      f.input :photo, as: :file

    end
    f.actions
  end


  permit_params :name, :description, :technique, :location, :date, :camera, :serie_id, :photo
end
