class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :student_max
  end
end
