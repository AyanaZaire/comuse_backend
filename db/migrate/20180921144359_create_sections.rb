class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.string :title
      t.string :duration
      t.string :description
      t.string :location
      t.string :materials_provided
      t.string :materials_to_bring
      t.string :faqs
      t.integer :category_id
      t.integer :teacher_id
      t.decimal :price

      t.timestamps
    end
  end
end
