class CreateEnrolleds < ActiveRecord::Migration[5.2]
  def change
    create_table :enrolleds do |t|
      t.integer :student_id
      t.integer :section_id

      t.timestamps
    end
  end
end
