class AddImgUrlToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :img_url, :string
  end
end
