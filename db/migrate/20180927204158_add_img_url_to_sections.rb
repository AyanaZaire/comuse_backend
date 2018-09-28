class AddImgUrlToSections < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :img_url, :string
  end
end
