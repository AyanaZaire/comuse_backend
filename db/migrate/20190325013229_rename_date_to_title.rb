class RenameDateToTitle < ActiveRecord::Migration[5.2]
  def change
    rename_column :courses, :date, :title
  end
end
