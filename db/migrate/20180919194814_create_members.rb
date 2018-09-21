class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :bio
      t.string :location
      t.string :website
      t.string :skill

      t.timestamps
    end
  end
end
