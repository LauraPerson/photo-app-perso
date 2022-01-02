ActiveAdmin.register Event do

  index do
    selectable_column
    column :year
    column :place
    column :object
    actions
  end

  form do |f|
    f.inputs "New Event" do
      f.input :year
      f.input :place
      f.input :object
    end
    f.actions
  end


  permit_params :year, :place, :object
end