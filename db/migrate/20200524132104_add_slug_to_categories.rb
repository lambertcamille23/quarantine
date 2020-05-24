class AddSlugToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :slug, :string

    Category.all.each do |category|
      category.update(slug: category.name.parameterize)
    end
  end
end
