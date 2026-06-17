ActiveAdmin.register Customer do
  config.filters = false

  permit_params :full_name, :phone_number, :email_address, :notes, :image

  index do
    selectable_column
    id_column
    column :full_name
    column :phone_number
    column :email_address
    column :image do |customer|
      customer.image.attached? ? status_tag("Attached", class: "yes") : status_tag("Missing")
    end
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :id
      row :full_name
      row :phone_number
      row :email_address
      row :notes
      row :image do |customer|
        if customer.image.attached?
          image_tag url_for(customer.image), style: "max-width: 240px; height: auto;"
        else
          status_tag("Missing")
        end
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  form html: { multipart: true } do |f|
    f.semantic_errors
    f.inputs "Customer Details" do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.input :image, as: :file, hint: (
        if f.object.image.attached?
          image_tag url_for(f.object.image), style: "max-width: 160px; height: auto;"
        end
      )
    end
    f.actions
  end
end
