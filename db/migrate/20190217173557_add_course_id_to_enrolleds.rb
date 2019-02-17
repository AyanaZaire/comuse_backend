class AddCourseIdToEnrolleds < ActiveRecord::Migration[5.2]
  def change
    add_column :enrolleds, :course_id, :integer
  end
end
