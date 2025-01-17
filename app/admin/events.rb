ActiveAdmin.register Event do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description, :link, :date, :category_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:description, :link, :date, :category_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
    form do |f|
    inputs 'Details' do
      input :category
      input :title
      input :description
      input :link
      input :date#, as: :string
    end
    actions
  end

end
