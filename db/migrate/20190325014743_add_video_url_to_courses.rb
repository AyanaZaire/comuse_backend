class AddVideoUrlToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :video_url, :string
  end
end
