class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
