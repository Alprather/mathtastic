class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :subject
      t.integer :grade
      t.string :lesson_file

      t.timestamps null: false
    end
  end
end
