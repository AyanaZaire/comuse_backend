class RemoveCourseId < ActiveRecord::Migration[5.2]
  def change
    remove_column :enrolleds, :course_id
  end
end
