class RemoveImgUrlFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :img_url, :string
  end
end
