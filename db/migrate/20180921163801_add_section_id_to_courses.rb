class AddSectionIdToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :section_id, :integer
  end
end
