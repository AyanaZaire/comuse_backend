class AddImgUrlToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :img_url, :string
  end
end
