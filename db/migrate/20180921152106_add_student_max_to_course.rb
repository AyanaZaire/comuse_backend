class AddStudentMaxToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :student_max, :integer
  end
end
